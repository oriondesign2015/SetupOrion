#!/bin/bash

## // ## // ## // ## // ## // ## // ## // ## //## // ## // ## // ## // ## // ## // ## // ## // ##
##                                         ORION DESIGN                                        ##
## // ## // ## // ## // ## // ## // ## // ## //## // ## // ## // ## // ## // ## // ## // ## // ##

## Cores
amarelo="\e[33m"
verde="\e[32m"
branco="\e[97m"
vermelho="\e[91m"
reset="\e[0m"

## // ## // ## // ## // ## // ## // ## // ## //## // ## // ## // ## // ## // ## // ## // ## // ##
##                                    OLLAMA + LITELLM INSTALLER                              ##
## // ## // ## // ## // ## // ## // ## // ## //## // ## // ## // ## // ## // ## // ## // ## // ##

clear

echo -e "${amarelo}===================================================================================================\e[0m"
echo -e "${amarelo}=                                                                                                 =\e[0m"
echo -e "${amarelo}=                    ${branco}INSTALADOR OLLAMA + LITELLM - ORION DESIGN${amarelo}                                =\e[0m"
echo -e "${amarelo}=                                                                                                 =\e[0m"
echo -e "${amarelo}===================================================================================================\e[0m"
echo ""
echo -e "${branco}Este instalador irá configurar:${reset}"
echo -e "  ${verde}✓${reset} Ollama - Runtime local para LLMs"
echo -e "  ${verde}✓${reset} LiteLLM - Gateway de API compatível com OpenAI"
echo -e "  ${verde}✓${reset} PostgreSQL - Banco de dados para gerenciamento (opcional)"
echo ""

## Verificar se Docker está instalado
echo -e "${amarelo}[1/7]${reset} Verificando Docker..."
if ! command -v docker &> /dev/null; then
    echo -e "${vermelho}✗ Docker não encontrado!${reset}"
    echo -e "${branco}Por favor, instale o Docker primeiro: https://docs.docker.com/get-docker/${reset}"
    exit 1
fi
echo -e "${verde}✓ Docker encontrado${reset}"

## Verificar se Docker Compose está instalado
echo -e "${amarelo}[2/7]${reset} Verificando Docker Compose..."
if ! command -v docker-compose &> /dev/null && ! docker compose version &> /dev/null; then
    echo -e "${vermelho}✗ Docker Compose não encontrado!${reset}"
    echo -e "${branco}Por favor, instale o Docker Compose primeiro${reset}"
    exit 1
fi
echo -e "${verde}✓ Docker Compose encontrado${reset}"

## Criar diretório de instalação
INSTALL_DIR="$HOME/ollama-litellm"
echo -e "${amarelo}[3/7]${reset} Criando diretório de instalação..."
mkdir -p "$INSTALL_DIR"
cd "$INSTALL_DIR" || exit 1
echo -e "${verde}✓ Diretório criado: $INSTALL_DIR${reset}"

## Copiar arquivos de configuração
echo -e "${amarelo}[4/7]${reset} Copiando arquivos de configuração..."
# Aqui você copiaria os arquivos do repositório
# Por enquanto, vamos criar os arquivos necessários

## Configurar variáveis de ambiente
echo -e "${amarelo}[5/7]${reset} Configurando variáveis de ambiente..."
if [ ! -f .env ]; then
    echo -e "${branco}Criando arquivo .env...${reset}"
    
    # Gerar chaves aleatórias
    MASTER_KEY="sk-$(openssl rand -hex 16)"
    SALT_KEY="sk-salt-$(openssl rand -hex 16)"
    DB_PASSWORD="$(openssl rand -base64 24 | tr -d '/+=')"
    
    cat > .env << EOF
# Ollama + LiteLLM Stack - Environment Variables
# Gerado automaticamente em $(date)

# PostgreSQL Configuration
POSTGRES_DB=litellm
POSTGRES_USER=litellm
POSTGRES_PASSWORD=$DB_PASSWORD

# LiteLLM Configuration
LITELLM_MASTER_KEY=$MASTER_KEY
LITELLM_SALT_KEY=$SALT_KEY
LITELLM_LOG=INFO
LITELLM_PORT=4000

# Ollama Configuration
OLLAMA_PORT=11434
EOF
    
    echo -e "${verde}✓ Arquivo .env criado com chaves seguras${reset}"
else
    echo -e "${verde}✓ Arquivo .env já existe${reset}"
fi

## Detectar e configurar PostgreSQL
echo ""
bash check-postgres.sh

# Ler o modo escolhido
if [ -f .postgres-mode ]; then
    POSTGRES_MODE=$(cat .postgres-mode)
else
    POSTGRES_MODE="container"
fi

# Selecionar o docker-compose apropriado
case $POSTGRES_MODE in
    "none")
        echo -e "${amarelo}⚠ Usando configuração sem PostgreSQL${reset}"
        COMPOSE_FILE="docker-compose.no-postgres.yml"
        ;;
    "external")
        echo -e "${verde}✓ Usando PostgreSQL externo${reset}"
        COMPOSE_FILE="docker-compose.yml"
        # Atualizar DATABASE_URL no .env
        if grep -q "EXTERNAL_POSTGRES_HOST" .env; then
            PG_HOST=$(grep EXTERNAL_POSTGRES_HOST .env | cut -d'=' -f2)
            PG_PORT=$(grep EXTERNAL_POSTGRES_PORT .env | cut -d'=' -f2)
            PG_DB=$(grep EXTERNAL_POSTGRES_DB .env | cut -d'=' -f2)
            PG_USER=$(grep EXTERNAL_POSTGRES_USER .env | cut -d'=' -f2)
            PG_PASS=$(grep EXTERNAL_POSTGRES_PASSWORD .env | cut -d'=' -f2)

            # Comentar o serviço postgres no docker-compose
            sed -i '/^  postgres:/,/^  [a-z]/ s/^/#/' docker-compose.yml
        fi
        ;;
    "container"|*)
        echo -e "${verde}✓ Usando container PostgreSQL${reset}"
        COMPOSE_FILE="docker-compose.yml"
        ;;
esac

## Perguntar sobre GPU
echo ""
echo -e "${amarelo}===================================================================================================\e[0m"
echo -e "${branco}Você possui GPU NVIDIA e deseja usá-la com Ollama?${reset}"
echo -e "${branco}(Requer NVIDIA Container Toolkit instalado)${reset}"
echo ""
read -p "Usar GPU NVIDIA? (s/N): " use_gpu
use_gpu=${use_gpu:-N}

if [[ "$use_gpu" =~ ^[Ss]$ ]]; then
    echo -e "${verde}✓ GPU NVIDIA será habilitada${reset}"
    # Descomentar seção GPU no docker-compose
    # (implementar lógica aqui se necessário)
fi

## Iniciar serviços
echo ""
echo -e "${amarelo}[6/7]${reset} Iniciando serviços..."
docker-compose -f "$COMPOSE_FILE" up -d

if [ $? -eq 0 ]; then
    echo -e "${verde}✓ Serviços iniciados com sucesso${reset}"
else
    echo -e "${vermelho}✗ Erro ao iniciar serviços${reset}"
    exit 1
fi

## Aguardar serviços ficarem prontos
echo -e "${amarelo}[7/7]${reset} Aguardando serviços ficarem prontos..."
sleep 10

## Verificar saúde dos serviços
echo -e "${branco}Verificando saúde dos serviços...${reset}"

# Verificar Ollama
if curl -s http://localhost:11434/api/tags > /dev/null 2>&1; then
    echo -e "${verde}✓ Ollama está rodando${reset}"
else
    echo -e "${amarelo}⚠ Ollama ainda está iniciando...${reset}"
fi

# Verificar LiteLLM
if curl -s http://localhost:4000/health > /dev/null 2>&1; then
    echo -e "${verde}✓ LiteLLM está rodando${reset}"
else
    echo -e "${amarelo}⚠ LiteLLM ainda está iniciando...${reset}"
fi

## Baixar modelo padrão
echo ""
echo -e "${amarelo}===================================================================================================\e[0m"
echo -e "${branco}Deseja baixar um modelo agora?${reset}"
echo -e "${branco}Modelos disponíveis:${reset}"
echo -e "  ${verde}1)${reset} llama3.2 (3B) - Rápido e eficiente ${amarelo}[Recomendado]${reset}"
echo -e "  ${verde}2)${reset} llama3.1 (8B) - Mais poderoso"
echo -e "  ${verde}3)${reset} mistral (7B) - Ótimo equilíbrio"
echo -e "  ${verde}4)${reset} phi3 (3.8B) - Pequeno e rápido"
echo -e "  ${verde}5)${reset} Pular (baixar depois)"
echo ""
read -p "Escolha uma opção (1-5): " model_choice

case $model_choice in
    1)
        echo -e "${amarelo}Baixando llama3.2...${reset}"
        docker exec ollama ollama pull llama3.2
        ;;
    2)
        echo -e "${amarelo}Baixando llama3.1...${reset}"
        docker exec ollama ollama pull llama3.1
        ;;
    3)
        echo -e "${amarelo}Baixando mistral...${reset}"
        docker exec ollama ollama pull mistral
        ;;
    4)
        echo -e "${amarelo}Baixando phi3...${reset}"
        docker exec ollama ollama pull phi3
        ;;
    5)
        echo -e "${branco}Você pode baixar modelos depois com:${reset}"
        echo -e "${verde}docker exec ollama ollama pull <nome-do-modelo>${reset}"
        ;;
    *)
        echo -e "${amarelo}Opção inválida. Pulando download.${reset}"
        ;;
esac

## Exibir informações finais
echo ""
echo -e "${amarelo}===================================================================================================\e[0m"
echo -e "${verde}                                    INSTALAÇÃO CONCLUÍDA!                                      ${reset}"
echo -e "${amarelo}===================================================================================================\e[0m"
echo ""
echo -e "${branco}📍 Diretório de instalação:${reset} $INSTALL_DIR"
echo ""
echo -e "${branco}🌐 URLs de acesso:${reset}"
echo -e "  ${verde}•${reset} Ollama API:    http://localhost:11434"
echo -e "  ${verde}•${reset} LiteLLM API:   http://localhost:4000"
echo -e "  ${verde}•${reset} LiteLLM UI:    http://localhost:4000/ui"
echo ""
echo -e "${branco}🔑 Credenciais:${reset}"
echo -e "  ${verde}•${reset} Master Key: ${amarelo}$(grep LITELLM_MASTER_KEY .env | cut -d'=' -f2)${reset}"
echo ""
echo -e "${branco}📚 Comandos úteis:${reset}"
echo -e "  ${verde}•${reset} Ver logs:           ${amarelo}docker-compose logs -f${reset}"
echo -e "  ${verde}•${reset} Parar serviços:     ${amarelo}docker-compose down${reset}"
echo -e "  ${verde}•${reset} Reiniciar:          ${amarelo}docker-compose restart${reset}"
echo -e "  ${verde}•${reset} Listar modelos:     ${amarelo}docker exec ollama ollama list${reset}"
echo -e "  ${verde}•${reset} Baixar modelo:      ${amarelo}docker exec ollama ollama pull <modelo>${reset}"
echo ""
echo -e "${branco}📖 Documentação completa:${reset} $INSTALL_DIR/README.md"
echo ""
echo -e "${branco}🧪 Testar instalação:${reset}"
echo -e "${verde}curl -X POST 'http://localhost:4000/chat/completions' \\${reset}"
echo -e "${verde}  -H 'Content-Type: application/json' \\${reset}"
echo -e "${verde}  -H 'Authorization: Bearer $(grep LITELLM_MASTER_KEY .env | cut -d'=' -f2)' \\${reset}"
echo -e "${verde}  -d '{${reset}"
echo -e "${verde}    \"model\": \"llama3.2\",${reset}"
echo -e "${verde}    \"messages\": [{\"role\": \"user\", \"content\": \"Olá!\"}]${reset}"
echo -e "${verde}  }'${reset}"
echo ""
echo -e "${amarelo}===================================================================================================\e[0m"
echo -e "${branco}                        Desenvolvido por OrionDesign - oriondesign.art.br                      ${reset}"
echo -e "${amarelo}===================================================================================================\e[0m"
echo ""

