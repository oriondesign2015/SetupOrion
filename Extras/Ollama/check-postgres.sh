#!/bin/bash

## // ## // ## // ## // ## // ## // ## // ## //## // ## // ## // ## // ## // ## // ## // ## // ##
##                          POSTGRESQL DETECTION AND CONFIGURATION                            ##
## // ## // ## // ## // ## // ## // ## // ## //## // ## // ## // ## // ## // ## // ## // ## // ##

## Cores
amarelo="\e[33m"
verde="\e[32m"
branco="\e[97m"
vermelho="\e[91m"
azul="\e[34m"
reset="\e[0m"

echo -e "${azul}===================================================================================================\e[0m"
echo -e "${branco}                          VERIFICAÇÃO DE POSTGRESQL EXISTENTE                                ${reset}"
echo -e "${azul}===================================================================================================\e[0m"
echo ""

## Função para verificar PostgreSQL local
check_local_postgres() {
    echo -e "${amarelo}[1/3]${reset} Verificando PostgreSQL local..."
    
    # Verificar se o serviço PostgreSQL está rodando
    if systemctl is-active --quiet postgresql 2>/dev/null; then
        echo -e "${verde}✓ PostgreSQL encontrado rodando como serviço systemd${reset}"
        return 0
    fi
    
    # Verificar se o comando psql está disponível
    if command -v psql &> /dev/null; then
        echo -e "${verde}✓ Cliente PostgreSQL (psql) encontrado${reset}"
        
        # Tentar conectar ao PostgreSQL local
        if psql -U postgres -c '\q' 2>/dev/null; then
            echo -e "${verde}✓ PostgreSQL local está acessível${reset}"
            return 0
        fi
    fi
    
    echo -e "${amarelo}⚠ PostgreSQL local não encontrado ou não acessível${reset}"
    return 1
}

## Função para verificar PostgreSQL em Docker
check_docker_postgres() {
    echo -e "${amarelo}[2/3]${reset} Verificando PostgreSQL em containers Docker..."
    
    if ! command -v docker &> /dev/null; then
        echo -e "${amarelo}⚠ Docker não encontrado${reset}"
        return 1
    fi
    
    # Procurar containers PostgreSQL rodando
    postgres_containers=$(docker ps --filter "ancestor=postgres" --format "{{.Names}}" 2>/dev/null)
    
    if [ -n "$postgres_containers" ]; then
        echo -e "${verde}✓ Containers PostgreSQL encontrados:${reset}"
        echo "$postgres_containers" | while read -r container; do
            echo -e "  ${verde}•${reset} $container"
        done
        return 0
    fi
    
    echo -e "${amarelo}⚠ Nenhum container PostgreSQL encontrado${reset}"
    return 1
}

## Função para configurar PostgreSQL externo
configure_external_postgres() {
    echo ""
    echo -e "${azul}===================================================================================================\e[0m"
    echo -e "${branco}                          CONFIGURAÇÃO DE POSTGRESQL EXTERNO                                ${reset}"
    echo -e "${azul}===================================================================================================\e[0m"
    echo ""
    
    echo -e "${branco}Por favor, forneça as informações de conexão do PostgreSQL:${reset}"
    echo ""
    
    read -p "Host do PostgreSQL [localhost]: " pg_host
    pg_host=${pg_host:-localhost}
    
    read -p "Porta do PostgreSQL [5432]: " pg_port
    pg_port=${pg_port:-5432}
    
    read -p "Nome do banco de dados [litellm]: " pg_db
    pg_db=${pg_db:-litellm}
    
    read -p "Usuário do PostgreSQL [litellm]: " pg_user
    pg_user=${pg_user:-litellm}
    
    read -sp "Senha do PostgreSQL: " pg_password
    echo ""
    
    # Testar conexão
    echo ""
    echo -e "${amarelo}Testando conexão...${reset}"
    
    if command -v psql &> /dev/null; then
        if PGPASSWORD="$pg_password" psql -h "$pg_host" -p "$pg_port" -U "$pg_user" -d postgres -c '\q' 2>/dev/null; then
            echo -e "${verde}✓ Conexão bem-sucedida!${reset}"
            
            # Criar banco de dados se não existir
            echo -e "${amarelo}Criando banco de dados '$pg_db' se não existir...${reset}"
            PGPASSWORD="$pg_password" psql -h "$pg_host" -p "$pg_port" -U "$pg_user" -d postgres -c "CREATE DATABASE $pg_db;" 2>/dev/null
            
            # Salvar configuração no .env
            cat >> .env << EOF

# External PostgreSQL Configuration
USE_EXTERNAL_POSTGRES=true
EXTERNAL_POSTGRES_HOST=$pg_host
EXTERNAL_POSTGRES_PORT=$pg_port
EXTERNAL_POSTGRES_DB=$pg_db
EXTERNAL_POSTGRES_USER=$pg_user
EXTERNAL_POSTGRES_PASSWORD=$pg_password
EOF
            
            echo -e "${verde}✓ Configuração salva em .env${reset}"
            return 0
        else
            echo -e "${vermelho}✗ Falha ao conectar ao PostgreSQL${reset}"
            echo -e "${branco}Verifique as credenciais e tente novamente${reset}"
            return 1
        fi
    else
        echo -e "${amarelo}⚠ Cliente psql não encontrado. Salvando configuração sem testar...${reset}"
        
        # Salvar configuração no .env sem testar
        cat >> .env << EOF

# External PostgreSQL Configuration (não testado)
USE_EXTERNAL_POSTGRES=true
EXTERNAL_POSTGRES_HOST=$pg_host
EXTERNAL_POSTGRES_PORT=$pg_port
EXTERNAL_POSTGRES_DB=$pg_db
EXTERNAL_POSTGRES_USER=$pg_user
EXTERNAL_POSTGRES_PASSWORD=$pg_password
EOF
        
        echo -e "${verde}✓ Configuração salva em .env${reset}"
        return 0
    fi
}

## Main
echo -e "${amarelo}[3/3]${reset} Determinando configuração ideal..."
echo ""

# Verificar PostgreSQL local
local_found=false
docker_found=false

if check_local_postgres; then
    local_found=true
fi

if check_docker_postgres; then
    docker_found=true
fi

echo ""
echo -e "${azul}===================================================================================================\e[0m"

if [ "$local_found" = true ] || [ "$docker_found" = true ]; then
    echo -e "${branco}PostgreSQL detectado no sistema!${reset}"
    echo ""
    echo -e "${branco}Escolha uma opção:${reset}"
    echo -e "  ${verde}1)${reset} Usar PostgreSQL existente (você fornecerá as credenciais)"
    echo -e "  ${verde}2)${reset} Criar novo container PostgreSQL para LiteLLM ${amarelo}[Recomendado]${reset}"
    echo ""
    read -p "Escolha uma opção (1-2): " choice
    
    case $choice in
        1)
            if configure_external_postgres; then
                echo "external" > .postgres-mode
                echo -e "${verde}✓ Modo: PostgreSQL Externo${reset}"
            else
                echo -e "${vermelho}Falha na configuração. Usando modo sem PostgreSQL.${reset}"
                echo "none" > .postgres-mode
            fi
            ;;
        2)
            echo "container" > .postgres-mode
            echo -e "${verde}✓ Modo: Container PostgreSQL${reset}"
            ;;
        *)
            echo "container" > .postgres-mode
            echo -e "${amarelo}Opção inválida. Usando container PostgreSQL.${reset}"
            ;;
    esac
else
    echo -e "${branco}PostgreSQL não detectado no sistema.${reset}"
    echo ""
    echo -e "${branco}Escolha uma opção:${reset}"
    echo -e "  ${verde}1)${reset} Criar container PostgreSQL ${amarelo}[Recomendado]${reset}"
    echo -e "  ${verde}2)${reset} Usar PostgreSQL externo (você fornecerá as credenciais)"
    echo -e "  ${verde}3)${reset} Não usar PostgreSQL (recursos limitados)"
    echo ""
    read -p "Escolha uma opção (1-3): " choice
    
    case $choice in
        1)
            echo "container" > .postgres-mode
            echo -e "${verde}✓ Modo: Container PostgreSQL${reset}"
            ;;
        2)
            if configure_external_postgres; then
                echo "external" > .postgres-mode
                echo -e "${verde}✓ Modo: PostgreSQL Externo${reset}"
            else
                echo -e "${vermelho}Falha na configuração. Usando modo sem PostgreSQL.${reset}"
                echo "none" > .postgres-mode
            fi
            ;;
        3)
            echo "none" > .postgres-mode
            echo -e "${amarelo}⚠ Modo: Sem PostgreSQL (recursos limitados)${reset}"
            ;;
        *)
            echo "container" > .postgres-mode
            echo -e "${amarelo}Opção inválida. Usando container PostgreSQL.${reset}"
            ;;
    esac
fi

echo -e "${azul}===================================================================================================\e[0m"
echo ""

