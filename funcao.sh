#!/bin/bash

function generate_jwt_tokens() {
    # Verificar a disponibilidade dos comandos necessários e instalá-los se necessário
    if ! command -v openssl &> /dev/null; then
        echo "O comando 'openssl' não está disponível. Tentando instalar..."
        if [[ "$(uname)" == "Darwin" ]]; then
            # macOS
            brew install openssl
        elif [[ "$(expr substr $(uname -s) 1 5)" == "Linux" ]]; then
            # Linux
            if [[ -f /etc/redhat-release ]]; then
                # Red Hat, CentOS, Fedora
                sudo yum install -y openssl
            elif [[ -f /etc/debian_version ]]; then
                # Debian, Ubuntu
                sudo apt-get install -y openssl
            else
                echo "Não foi possível identificar a distribuição Linux. Por favor, instale o OpenSSL manualmente."
                return 1
            fi
        else
            echo "Sistema operacional não suportado. Por favor, instale o OpenSSL manualmente."
            return 1
        fi
    fi

    if ! command -v jq &> /dev/null; then
        echo "O comando 'jq' não está disponível. Tentando instalar..."
        if [[ "$(uname)" == "Darwin" ]]; then
            # macOS
            brew install jq
        elif [[ "$(expr substr $(uname -s) 1 5)" == "Linux" ]]; then
            # Linux
            if [[ -f /etc/redhat-release ]]; then
                # Red Hat, CentOS, Fedora
                sudo yum install -y jq
            elif [[ -f /etc/debian_version ]]; then
                # Debian, Ubuntu
                sudo apt-get install -y jq
            else
                echo "Não foi possível identificar a distribuição Linux. Por favor, instale o jq manualmente."
                return 1
            fi
        else
            echo "Sistema operacional não suportado. Por favor, instale o jq manualmente."
            return 1
        fi
    fi



# Definir os payloads dos JWTs
    payload_service_key=$(echo '{
      "role": "service_role",
      "iss": "supabase",
      "iat": 1714878000,
      "exp": 2524608000
    }' | jq -c .)

    payload_anon_key=$(echo '{
      "sub": "1234567890",
      "name": "supabase",
      "iat": 2524608000
    }' | jq -c .)

    # Gerar uma chave secreta aleatória e segura
    secret=$(openssl rand -hex 32)

    # Codificar o header em base64url
    header=$(echo '{"alg":"HS256","typ":"JWT"}' | openssl base64 | tr -d '=' | tr '+/' '-_' | tr -d '\n')

    # Codificar os payloads em base64url
    payload_service_key_base64=$(echo -n "$payload_service_key" | openssl base64 | tr -d '=' | tr '+/' '-_' | tr -d '\n')
    payload_anon_key_base64=$(echo -n "$payload_anon_key" | openssl base64 | tr -d '=' | tr '+/' '-_' | tr -d '\n')

    # Criar as assinaturas dos tokens usando a mesma chave secreta
    signature_service_key=$(echo -n "$header.$payload_service_key_base64" | openssl dgst -sha256 -hmac "$secret" -binary | openssl base64 | tr -d '=' | tr '+/' '-_' | tr -d '\n')
    signature_anon_key=$(echo -n "$header.$payload_anon_key_base64" | openssl dgst -sha256 -hmac "$secret" -binary | openssl base64 | tr -d '=' | tr '+/' '-_' | tr -d '\n')

    # Combinar as partes dos tokens
    token_service_key="$header.$payload_service_key_base64.$signature_service_key"
    token_anon_key="$header.$payload_anon_key_base64.$signature_anon_key"

    # Retornar os valores gerados como uma string separada por espaços
    echo "$secret $token_service_key $token_anon_key"
}

# Chamar a função e armazenar o retorno em uma variável
result=$(generate_jwt_tokens)

# Verificar se o resultado está vazio
if [[ -z "$result" ]]; then
    echo "A função retornou um resultado vazio. Verifique a configuração do ambiente e as dependências."
    exit 1
fi

# Extrair os valores individuais usando o comando 'read'
read secret token_service_key token_anon_key <<< "$result"

# Imprimir os valores
echo "Chave secreta: $secret"
echo "Token JWT de service_key: $token_service_key"
echo "Token JWT de anon_key: $token_anon_key"