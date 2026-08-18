# Ollama + LiteLLM Stack

## 📋 Visão Geral

Este stack combina **Ollama** (runtime local para LLMs) com **LiteLLM** (gateway de API compatível com OpenAI) para fornecer uma solução completa de IA local com interface padronizada.

**✨ Instalação Standalone**: Este stack pode ser instalado e usado **independentemente** de qualquer outro sistema. Não requer o SetupOrion ou qualquer outra ferramenta.

> ⚠️ **IMPORTANTE**: O SetupOrion possui sua própria implementação integrada do Ollama + LiteLLM.
> Este diretório `Extras/Ollama` é um **projeto standalone separado** que pode ser usado de forma independente.

### O que está incluído:

- **Ollama**: Execute modelos de linguagem localmente (Llama, Mistral, Phi, etc.)
- **LiteLLM**: Gateway de API compatível com OpenAI para Ollama
- **PostgreSQL**: Banco de dados para rastreamento de gastos e gerenciamento de chaves (opcional)

## 🎯 Características

- ✅ API compatível com OpenAI (use com qualquer SDK OpenAI)
- ✅ Suporte para múltiplos modelos (Llama 3.2, Mistral, Phi-3, etc.)
- ✅ Gerenciamento de chaves virtuais
- ✅ Rastreamento de uso e gastos
- ✅ Rate limiting e budgets
- ✅ Interface web de administração
- ✅ Suporte para GPU (NVIDIA)
- ✅ Totalmente local e privado
- ✅ **Instalação standalone** - não depende de outros sistemas

## 📦 Pré-requisitos

### Requisitos Mínimos:
- **CPU**: 4 cores
- **RAM**: 8GB (16GB recomendado)
- **Disco**: 20GB de espaço livre
- **Docker**: 20.10 ou superior
- **Docker Compose**: 2.0 ou superior

### Requisitos para GPU (Opcional):
- **GPU NVIDIA** com suporte CUDA
- **NVIDIA Container Toolkit** instalado

## 🚀 Instalação

### Método 1: Instalação Automática (Recomendado)

```bash
# 1. Clone ou baixe os arquivos
git clone https://github.com/oriondesign2015/SetupOrion.git
cd SetupOrion/Extras/Ollama

# 2. Execute o instalador
bash install.sh
```

O instalador irá:
- ✅ Verificar dependências (Docker, Docker Compose)
- ✅ Criar diretório de instalação em `~/ollama-litellm`
- ✅ Copiar todos os arquivos necessários
- ✅ Gerar chaves de segurança automaticamente
- ✅ Detectar PostgreSQL existente (se houver)
- ✅ Configurar GPU NVIDIA (se disponível)
- ✅ Iniciar os serviços
- ✅ Opcionalmente baixar um modelo LLM

### Método 2: Instalação Manual

```bash
# 1. Crie um diretório para a instalação
mkdir -p ~/ollama-litellm
cd ~/ollama-litellm

# 2. Baixe os arquivos necessários
# Copie os seguintes arquivos para este diretório:
# - docker-compose.yml
# - docker-compose.no-postgres.yml
# - litellm_config.yaml
# - .env.example

# 3. Configure as variáveis de ambiente
cp .env.example .env
nano .env  # Edite e altere as senhas e chaves
```

**⚠️ IMPORTANTE**: Altere pelo menos estas variáveis:
- `LITELLM_MASTER_KEY`: Chave mestra para admin
- `LITELLM_SALT_KEY`: Chave para criptografia (NÃO MUDE após primeira configuração!)
- `POSTGRES_PASSWORD`: Senha do banco de dados

```bash
# 4. Inicie os serviços
docker-compose up -d
```

### 4. Baixe um modelo no Ollama

```bash
# Baixar Llama 3.2 (3B - rápido e eficiente)
docker exec -it ollama ollama pull llama3.2

# Ou Llama 3.1 (8B - mais poderoso)
docker exec -it ollama ollama pull llama3.1

# Ou Mistral (7B - ótimo equilíbrio)
docker exec -it ollama ollama pull mistral
```

### 5. Teste a instalação

```bash
curl http://localhost:4000/health
```

## 📖 Uso

### Acessar a Interface Web

Abra seu navegador em: `http://localhost:4000/ui`

Use a chave mestra (`LITELLM_MASTER_KEY`) para fazer login.

### Fazer uma requisição via API

```bash
curl -X POST 'http://localhost:4000/chat/completions' \
  -H 'Content-Type: application/json' \
  -H 'Authorization: Bearer sk-1234' \
  -d '{
    "model": "llama3.2",
    "messages": [
      {
        "role": "user",
        "content": "Olá! Como você está?"
      }
    ]
  }'
```

### Usar com Python (OpenAI SDK)

```python
from openai import OpenAI

client = OpenAI(
    api_key="sk-1234",  # Sua LITELLM_MASTER_KEY
    base_url="http://localhost:4000"
)

response = client.chat.completions.create(
    model="llama3.2",
    messages=[
        {"role": "user", "content": "Explique o que é IA em 3 linhas"}
    ]
)

print(response.choices[0].message.content)
```

### Criar uma chave virtual

```bash
curl -X POST 'http://localhost:4000/key/generate' \
  -H 'Authorization: Bearer sk-1234' \
  -H 'Content-Type: application/json' \
  -d '{
    "key_alias": "minha-app",
    "rpm_limit": 10,
    "max_budget": 100
  }'
```

## 🔧 Configuração Avançada

### Usar PostgreSQL Externo

Se você já tem um PostgreSQL instalado, edite o `.env`:

```bash
USE_EXTERNAL_POSTGRES=true
EXTERNAL_POSTGRES_HOST=seu-host-postgres
EXTERNAL_POSTGRES_PORT=5432
EXTERNAL_POSTGRES_DB=litellm
EXTERNAL_POSTGRES_USER=litellm
EXTERNAL_POSTGRES_PASSWORD=sua-senha
```

Depois, comente a seção `postgres` no `docker-compose.yml` e atualize a variável `DATABASE_URL` no serviço `litellm`.

### Habilitar GPU (NVIDIA)

1. Instale o NVIDIA Container Toolkit
2. Descomente a seção `deploy` no serviço `ollama` do `docker-compose.yml`
3. Reinicie os containers

```bash
docker-compose down
docker-compose up -d
```

### Adicionar mais modelos

Edite `litellm_config.yaml` e adicione novos modelos na seção `model_list`.

## 📊 Modelos Disponíveis

| Modelo | Tamanho | Uso Recomendado | Função Calling | Visão |
|--------|---------|-----------------|----------------|-------|
| llama3.2 | 3B | Geral, rápido | ✅ | ❌ |
| llama3.1 | 8B | Geral, poderoso | ✅ | ❌ |
| mistral | 7B | Geral, eficiente | ❌ | ❌ |
| phi3 | 3.8B | Tarefas específicas | ❌ | ❌ |
| gemma2 | 9B | Geral | ❌ | ❌ |
| codellama | 7B | Programação | ❌ | ❌ |
| llava | 7B | Análise de imagens | ❌ | ✅ |

## 🛠️ Comandos Úteis

### Gerenciar Modelos Ollama

```bash
# Listar modelos instalados
docker exec -it ollama ollama list

# Baixar um modelo
docker exec -it ollama ollama pull <nome-do-modelo>

# Remover um modelo
docker exec -it ollama ollama rm <nome-do-modelo>

# Testar um modelo diretamente
docker exec -it ollama ollama run llama3.2 "Olá, como você está?"
```

### Gerenciar Containers

```bash
# Ver logs do LiteLLM
docker-compose logs -f litellm

# Ver logs do Ollama
docker-compose logs -f ollama

# Reiniciar serviços
docker-compose restart

# Parar todos os serviços
docker-compose down

# Parar e remover volumes (CUIDADO: apaga dados!)
docker-compose down -v
```

### Backup do Banco de Dados

```bash
# Fazer backup
docker exec ollama-litellm-postgres pg_dump -U litellm litellm > backup.sql

# Restaurar backup
cat backup.sql | docker exec -i ollama-litellm-postgres psql -U litellm litellm
```

## 🔍 Troubleshooting

### Problema: Ollama não inicia

**Solução**: Verifique se a porta 11434 está disponível:
```bash
sudo lsof -i :11434
docker-compose logs ollama
```

### Problema: LiteLLM não conecta ao Ollama

**Solução**: Verifique se o Ollama está rodando:
```bash
curl http://localhost:11434/api/tags
```

### Problema: Erro de memória ao rodar modelos

**Solução**: Use modelos menores ou aumente a RAM disponível:
- Llama 3.2 (3B) requer ~4GB RAM
- Llama 3.1 (8B) requer ~8GB RAM
- Mistral (7B) requer ~6GB RAM

### Problema: PostgreSQL não inicia

**Solução**: Verifique permissões e logs:
```bash
docker-compose logs postgres
sudo chown -R 999:999 ./postgres_data  # Se necessário
```

## 🔗 Integração com SetupOrion (Opcional)

Este stack também está disponível como **opção [31]** no menu do SetupOrion para instalação automatizada.

Se você estiver usando o SetupOrion:
1. Execute o SetupOrion
2. Escolha a opção **[31]** - Ollama + LiteLLM
3. O instalador será executado automaticamente

**Nota**: A instalação via SetupOrion usa exatamente os mesmos arquivos e processo descrito neste README. O SetupOrion apenas facilita o acesso ao instalador.

## 📚 Recursos Adicionais

- [Documentação Ollama](https://github.com/ollama/ollama)
- [Documentação LiteLLM](https://docs.litellm.ai/)
- [Modelos disponíveis no Ollama](https://ollama.com/library)
- [SetupOrion](https://github.com/oriondesign2015/SetupOrion) - Instalador automatizado de aplicações
- [API Reference LiteLLM](https://docs.litellm.ai/docs/proxy/endpoints)

## 🔐 Segurança

### Recomendações:

1. **Altere todas as senhas padrão** no arquivo `.env`
2. **Nunca exponha** a porta do PostgreSQL (5432) publicamente
3. **Use HTTPS** em produção (configure um reverse proxy como Traefik/Nginx)
4. **Limite o acesso** à interface web do LiteLLM
5. **Faça backups regulares** do banco de dados
6. **Monitore o uso** através da interface web

## 🤝 Suporte

Para problemas ou dúvidas:
- Abra uma issue no repositório
- Entre em contato com a comunidade OrionDesign
- Consulte a documentação oficial dos projetos

## 📄 Licença

Este stack segue a licença MIT do projeto SetupOrion.

---

**Desenvolvido por OrionDesign** | [oriondesign.art.br](https://oriondesign.art.br)
**Desenvolvido por BEMN** | [bemn.com.br](https://bemn.com.br)
