# 🚀 Guia de Início Rápido - Ollama + LiteLLM

**✨ Instalação Standalone**: Este stack é completamente independente e pode ser instalado sem o SetupOrion.

## Instalação em 3 Passos

### 1️⃣ Baixe e execute o instalador

```bash
# Clone o repositório (ou baixe apenas a pasta Ollama)
git clone https://github.com/oriondesign2015/SetupOrion.git
cd SetupOrion/Extras/Ollama

# Execute o instalador
bash install.sh
```

O instalador irá:
- ✅ Verificar dependências (Docker, Docker Compose)
- ✅ Criar diretório de instalação em `~/ollama-litellm`
- ✅ Copiar todos os arquivos necessários
- ✅ Detectar PostgreSQL existente no sistema
- ✅ Configurar variáveis de ambiente com chaves seguras
- ✅ Iniciar os serviços
- ✅ Opcionalmente baixar um modelo

### 2️⃣ Aguarde os serviços iniciarem

```bash
# Vá para o diretório de instalação
cd ~/ollama-litellm

# Verificar status
docker-compose ps

# Ver logs
docker-compose logs -f
```

### 3️⃣ Teste a instalação

```bash
# Testar Ollama
curl http://localhost:11434/api/tags

# Testar LiteLLM
curl http://localhost:4000/health
```

## 🎯 Primeiro Uso

### Baixar um modelo (se não baixou durante instalação)

```bash
# Llama 3.2 (3B) - Rápido e eficiente
docker exec ollama ollama pull llama3.2

# Ou Mistral (7B) - Ótimo equilíbrio
docker exec ollama ollama pull mistral
```

### Fazer sua primeira requisição

```bash
curl -X POST 'http://localhost:4000/chat/completions' \
  -H 'Content-Type: application/json' \
  -H 'Authorization: Bearer SEU_MASTER_KEY_AQUI' \
  -d '{
    "model": "llama3.2",
    "messages": [
      {
        "role": "user",
        "content": "Olá! Me explique o que é inteligência artificial em 3 linhas."
      }
    ]
  }'
```

**Nota**: Substitua `SEU_MASTER_KEY_AQUI` pela chave que foi gerada (está no arquivo `.env` como `LITELLM_MASTER_KEY`)

### Acessar a interface web

1. Abra seu navegador em: `http://localhost:4000/ui`
2. Faça login com sua `LITELLM_MASTER_KEY`
3. Explore a interface de administração

## 🐍 Exemplo com Python

```python
from openai import OpenAI

# Configurar cliente
client = OpenAI(
    api_key="SEU_MASTER_KEY_AQUI",  # Sua LITELLM_MASTER_KEY
    base_url="http://localhost:4000"
)

# Fazer uma requisição
response = client.chat.completions.create(
    model="llama3.2",
    messages=[
        {"role": "system", "content": "Você é um assistente útil."},
        {"role": "user", "content": "Qual é a capital do Brasil?"}
    ]
)

print(response.choices[0].message.content)
```

## 📦 Instalação do SDK Python

```bash
pip install openai
```

## 🔑 Criar Chaves Virtuais

Chaves virtuais permitem controlar acesso, limites e rastreamento:

```bash
curl -X POST 'http://localhost:4000/key/generate' \
  -H 'Authorization: Bearer SEU_MASTER_KEY_AQUI' \
  -H 'Content-Type: application/json' \
  -d '{
    "key_alias": "minha-aplicacao",
    "rpm_limit": 10,
    "max_budget": 100,
    "models": ["llama3.2", "mistral"]
  }'
```

Isso retornará uma nova chave que você pode usar em suas aplicações.

## 🛠️ Comandos Úteis

```bash
# Ver logs em tempo real
docker-compose logs -f

# Reiniciar serviços
docker-compose restart

# Parar serviços
docker-compose down

# Parar e remover volumes (CUIDADO: apaga dados!)
docker-compose down -v

# Listar modelos instalados
docker exec ollama ollama list

# Remover um modelo
docker exec ollama ollama rm llama3.2

# Ver uso de recursos
docker stats
```

## 🔧 Configurações Avançadas

### Alterar portas

Edite o arquivo `.env`:

```bash
OLLAMA_PORT=11434
LITELLM_PORT=4000
```

Depois reinicie:

```bash
docker-compose down
docker-compose up -d
```

### Adicionar mais modelos no LiteLLM

Edite `litellm_config.yaml` e adicione:

```yaml
model_list:
  - model_name: seu-modelo
    litellm_params:
      model: ollama_chat/seu-modelo
      api_base: http://ollama:11434
```

Reinicie o LiteLLM:

```bash
docker-compose restart litellm
```

## ❓ Problemas Comuns

### Erro: "Connection refused"

**Solução**: Aguarde os serviços iniciarem completamente (pode levar 1-2 minutos)

```bash
docker-compose logs -f
```

### Erro: "Model not found"

**Solução**: Baixe o modelo primeiro

```bash
docker exec ollama ollama pull llama3.2
```

### Erro: "Out of memory"

**Solução**: Use um modelo menor ou aumente a RAM disponível

- Llama 3.2 (3B) → ~4GB RAM
- Phi-3 (3.8B) → ~4GB RAM
- Mistral (7B) → ~6GB RAM

## 📚 Próximos Passos

1. ✅ Leia a documentação completa: `README.md`
2. ✅ Explore a interface web em `http://localhost:4000/ui`
3. ✅ Teste diferentes modelos
4. ✅ Configure chaves virtuais para suas aplicações
5. ✅ Integre com suas aplicações usando o SDK OpenAI

## 🆘 Suporte

- 📖 Documentação completa: `README.md`
- 🌐 Ollama: https://github.com/ollama/ollama
- 🌐 LiteLLM: https://docs.litellm.ai/
- 💬 Comunidade OrionDesign

---

**Desenvolvido por OrionDesign** | [oriondesign.art.br](https://oriondesign.art.br)

