## Menu Evolution: exibe opções (API, GO, CRM) e chama a função escolhida
menu_evolution() {
    local opcao_evolution
    clear
    nome_evolution
    echo ""
    echo -e "\e[97mEscolha qual Evolution deseja instalar:\e[0m"
    echo ""
    echo -e "\e[33m  1 - Evolution API\e[0m"
    echo -e "\e[97m      API REST para integração com WhatsApp. Suporte a webhooks, múltiplas instâncias e integrações (N8N, Typebot, Chatwoot, etc.).\e[0m"
    echo ""
    echo -e "\e[33m  2 - Evolution GO\e[0m"
    echo -e "\e[97m      Versão em Go, focada em desempenho e menor consumo de recursos.\e[0m"
    echo ""
    echo -e "\e[33m  3 - Evolution CRM [ EM BREVE ]\e[0m"
    echo -e "\e[97m      Solução completa de CRM integrada ao WhatsApp. Em desenvolvimento.\e[0m"
    echo ""
    echo -en "\e[33mDigite a opção (1-3): \e[0m" && read -r opcao_evolution
    echo ""

    case "$opcao_evolution" in
        1|01) ferramenta_evolution_api "$1" ;;
        2|02) ferramenta_evolution_go "$1" ;;
        3|03) echo -e "\e[33mEvolution CRM em breve. Volte depois!\e[0m"; echo ""; return ;;
        *)    echo -e "\e[31mOpção inválida.\e[0m"; echo ""; return ;;
    esac
}

ferramenta_evolution() {
    recursos 1 1 && continue || return
    menu_evolution "$1"
}

ferramenta_evolution_api() {

## Verifica os recursos
recursos 1 1 && continue || return

## Limpa o terminal
clear

## Ativa a função dados para pegar os dados da vps
dados

## Mostra o nome da aplicação
nome_evolution

## Mostra mensagem para preencher informações
preencha_as_info

## Inicia um Loop até os dados estarem certos
while true; do

    ##Pergunta o Dominio para aplicação
    echo -e "\e[97mPasso$amarelo 1/1\e[0m"
    echo -en "\e[33mDigite o Dominio para a Evolution API (ex: api.oriondesign.art.br): \e[0m" && read -r url_evolution
    echo ""

    ## Limpa o terminal
    clear
    
    ## Mostra o nome da aplicação
    nome_evolution
    
    ## Mostra mensagem para verificar as informações
    conferindo_as_info

    ## Informação sobre URL
    echo -e "\e[33mDominio da Evolution API:\e[97m $url_evolution\e[0m"
    echo ""

    ## Pergunta se as respostas estão corretas
    read -p "As respostas estão corretas? (Y/N): " confirmacao
    if [ "$confirmacao" = "Y" ] || [ "$confirmacao" = "y" ]; then

        ## Digitou Y para confirmar que as informações estão corretas

        ## Limpar o terminal
        clear

        ## Mostrar mensagem de Instalando
        instalando_msg

        ## Sai do Loop
        break
    else

        ## Digitou N para dizer que as informações não estão corretas.

        ## Limpar o terminal
        clear

        ## Mostra o nome da ferramenta
        nome_evolution

        ## Mostra mensagem para preencher informações
        preencha_as_info

    ## Volta para o inicio do loop com as perguntas
    fi
done

## Mensagem de Passo
echo -e "\e[97m• INICIANDO A INSTALAÇÃO DA EVOLUTION API \e[33m[1/4]\e[0m"
echo ""
sleep 1

telemetria "Evolution API" "iniciado"

## Literalmente nada, apenas um espaço vazio caso precisar de adicionar alguma coisa
## Antes..
## E claro, para aparecer a mensagem do passo..

## Mensagem de Passo
echo -e "\e[97m• VERIFICANDO/INSTALANDO POSTGRES \e[33m[2/4]\e[0m"
echo ""
sleep 1

## Aqui vamos fazer uma verificação se já existe Postgres Instalado
## Se tiver ele vai criar um banco de dados no postgres ou perguntar se deseja apagar o que já existe e criar outro

## Verifica container postgres e cria banco no postgres

verificar_container_postgres
if [ $? -eq 0 ]; then
    echo "1/3 - [ OK ] - Postgres já instalado"
    pegar_senha_postgres > /dev/null 2>&1
    echo "2/3 - [ OK ] - Copiando senha do Postgres"
    criar_banco_postgres_da_stack "evolution${1:+_$1}"
    echo "3/3 - [ OK ] - Criando banco de dados"
    echo ""
else
    ferramenta_postgres
    pegar_senha_postgres > /dev/null 2>&1
    criar_banco_postgres_da_stack "evolution${1:+_$1}"
fi

pegar_senha_postgres > /dev/null 2>&1

## Mensagem de Passo
echo -e "\e[97m• INSTALANDO A EVOLUTION API \e[33m[3/4]\e[0m"
echo ""
sleep 1

## Aqui de fato vamos iniciar a instalação da Evolution API

## Criando uma Global Key Aleatória
apikeyglobal=$(openssl rand -hex 16)

## Criando a stack evolution.yaml
cat > evolution${1:+_$1}.yaml <<EOL
version: "3.7"
services:

## --------------------------- ORION --------------------------- ##

  evolution${1:+_$1}_api:
    image: evoapicloud/evolution-api:latest ## Versão da Evolution API

    volumes:
      - evolution${1:+_$1}_instances:/evolution/instances

    networks:
      - $nome_rede_interna ## Nome da rede interna

    environment:
    ## ⚙️ Configurações Gerais
      - SERVER_URL=https://$url_evolution
      - AUTHENTICATION_API_KEY=$apikeyglobal
      - AUTHENTICATION_EXPOSE_IN_FETCH_INSTANCES=true
      - DEL_INSTANCE=false
      - QRCODE_LIMIT=1902
      - LANGUAGE=pt-BR

    ## 📱 Configuração do Cliente
    ## Pegue a versão em: https://web.whatsapp.com/sw.js
      #- CONFIG_SESSION_PHONE_VERSION=2.3000.1028978088
      - CONFIG_SESSION_PHONE_CLIENT=SetupOrion
      - CONFIG_SESSION_PHONE_NAME=Chrome
      
    ## 🗄️ Configuração do Banco de Dados
      - DATABASE_ENABLED=true
      - DATABASE_PROVIDER=postgresql
      - DATABASE_CONNECTION_URI=postgresql://postgres:$senha_postgres@postgres:5432/evolution${1:+_$1}
      - DATABASE_CONNECTION_CLIENT_NAME=evolution${1:+_$1}
      - DATABASE_SAVE_DATA_INSTANCE=true
      - DATABASE_SAVE_DATA_NEW_MESSAGE=true
      - DATABASE_SAVE_MESSAGE_UPDATE=true
      - DATABASE_SAVE_DATA_CONTACTS=true
      - DATABASE_SAVE_DATA_CHATS=true
      - DATABASE_SAVE_DATA_LABELS=true
      - DATABASE_SAVE_DATA_HISTORIC=true

    ## 🤖 Integração com N8N
      - N8N_ENABLED=true

    ## 🤖 Integração com EvoAI
      - EVOAI_ENABLED=true
      
    ## 🤖 Integração com OpenAI
      - OPENAI_ENABLED=true
      
    ## 🌐 Integração com Dify
      - DIFY_ENABLED=true
      
    ## 💬 Integração com Typebot
      - TYPEBOT_ENABLED=true
      - TYPEBOT_API_VERSION=latest
      
    ## 🗣️ Integração com Chatwoot
      - CHATWOOT_ENABLED=true
      - CHATWOOT_MESSAGE_READ=true
      - CHATWOOT_MESSAGE_DELETE=true
      - CHATWOOT_IMPORT_DATABASE_CONNECTION_URI=postgresql://postgres:SENHA_DO_PGVECTOR@pgvector:5432/chatwoot?sslmode=disable
      - CHATWOOT_IMPORT_PLACEHOLDER_MEDIA_MESSAGE=false
      
    ## 🧊 Configuração do Cache
      - CACHE_REDIS_ENABLED=true
      - CACHE_REDIS_URI=redis://evolution${1:+_$1}_redis:6379/1
      - CACHE_REDIS_PREFIX_KEY=evolution
      - CACHE_REDIS_SAVE_INSTANCES=false
      - CACHE_LOCAL_ENABLED=false
      
    ## ☁️ Configuração do S3
      - S3_ENABLED=false
      - S3_ACCESS_KEY=
      - S3_SECRET_KEY=
      - S3_BUCKET=evolution
      - S3_PORT=443
      - S3_ENDPOINT=
      - S3_USE_SSL=true
      #- S3_REGION=eu-south

    ## 💼 Configuração do WhatsApp Business
      - WA_BUSINESS_TOKEN_WEBHOOK=evolution${1:+_$1}
      - WA_BUSINESS_URL=https://graph.facebook.com
      - WA_BUSINESS_VERSION=v23.0
      - WA_BUSINESS_LANGUAGE=pt_BR

    ## 📊 Telemetria
      - TELEMETRY=false
      - TELEMETRY_URL=

    ## 🌐 Configuração do WebSocket
      - WEBSOCKET_ENABLED=false
      - WEBSOCKET_GLOBAL_EVENTS=false

    ## 📨 Configuração do SQS
      - SQS_ENABLED=false
      - SQS_ACCESS_KEY_ID=
      - SQS_SECRET_ACCESS_KEY=
      - SQS_ACCOUNT_ID=
      - SQS_REGION=

    ## 🐇 Configuração do RabbitMQ
      - RABBITMQ_ENABLED=false
      - RABBITMQ_FRAME_MAX=8192
      - RABBITMQ_URI=amqp://USER:PASS@rabbitmq:5672/evolution${1:+_$1}
      - RABBITMQ_EXCHANGE_NAME=evolution
      - RABBITMQ_GLOBAL_ENABLED=false
      - RABBITMQ_EVENTS_APPLICATION_STARTUP=false
      - RABBITMQ_EVENTS_INSTANCE_CREATE=false
      - RABBITMQ_EVENTS_INSTANCE_DELETE=false
      - RABBITMQ_EVENTS_QRCODE_UPDATED=false
      - RABBITMQ_EVENTS_SEND_MESSAGE_UPDATE=false
      - RABBITMQ_EVENTS_MESSAGES_SET=false
      - RABBITMQ_EVENTS_MESSAGES_UPSERT=true
      - RABBITMQ_EVENTS_MESSAGES_EDITED=false
      - RABBITMQ_EVENTS_MESSAGES_UPDATE=false
      - RABBITMQ_EVENTS_MESSAGES_DELETE=false
      - RABBITMQ_EVENTS_SEND_MESSAGE=false
      - RABBITMQ_EVENTS_CONTACTS_SET=false
      - RABBITMQ_EVENTS_CONTACTS_UPSERT=false
      - RABBITMQ_EVENTS_CONTACTS_UPDATE=false
      - RABBITMQ_EVENTS_PRESENCE_UPDATE=false
      - RABBITMQ_EVENTS_CHATS_SET=false
      - RABBITMQ_EVENTS_CHATS_UPSERT=false
      - RABBITMQ_EVENTS_CHATS_UPDATE=false
      - RABBITMQ_EVENTS_CHATS_DELETE=false
      - RABBITMQ_EVENTS_GROUPS_UPSERT=false
      - RABBITMQ_EVENTS_GROUP_UPDATE=false
      - RABBITMQ_EVENTS_GROUP_PARTICIPANTS_UPDATE=false
      - RABBITMQ_EVENTS_CONNECTION_UPDATE=true
      - RABBITMQ_EVENTS_CALL=false
      - RABBITMQ_EVENTS_TYPEBOT_START=false
      - RABBITMQ_EVENTS_TYPEBOT_CHANGE_STATUS=false

    ## 🌐 Configuração do Webhook
      - WEBHOOK_GLOBAL_ENABLED=false
      - WEBHOOK_GLOBAL_URL=
      - WEBHOOK_GLOBAL_WEBHOOK_BY_EVENTS=false
      - WEBHOOK_EVENTS_APPLICATION_STARTUP=false
      - WEBHOOK_EVENTS_QRCODE_UPDATED=false
      - WEBHOOK_EVENTS_MESSAGES_SET=false
      - WEBHOOK_EVENTS_SEND_MESSAGE_UPDATE=false
      - WEBHOOK_EVENTS_MESSAGES_UPSERT=false
      - WEBHOOK_EVENTS_MESSAGES_EDITED=false
      - WEBHOOK_EVENTS_MESSAGES_UPDATE=false
      - WEBHOOK_EVENTS_MESSAGES_DELETE=false
      - WEBHOOK_EVENTS_SEND_MESSAGE=false
      - WEBHOOK_EVENTS_CONTACTS_SET=false
      - WEBHOOK_EVENTS_CONTACTS_UPSERT=false
      - WEBHOOK_EVENTS_CONTACTS_UPDATE=false
      - WEBHOOK_EVENTS_PRESENCE_UPDATE=false
      - WEBHOOK_EVENTS_CHATS_SET=false
      - WEBHOOK_EVENTS_CHATS_UPSERT=false
      - WEBHOOK_EVENTS_CHATS_UPDATE=false
      - WEBHOOK_EVENTS_CHATS_DELETE=false
      - WEBHOOK_EVENTS_GROUPS_UPSERT=false
      - WEBHOOK_EVENTS_GROUPS_UPDATE=false
      - WEBHOOK_EVENTS_GROUP_PARTICIPANTS_UPDATE=false
      - WEBHOOK_EVENTS_CONNECTION_UPDATE=false
      - WEBHOOK_EVENTS_LABELS_EDIT=false
      - WEBHOOK_EVENTS_LABELS_ASSOCIATION=false
      - WEBHOOK_EVENTS_CALL=false
      - WEBHOOK_EVENTS_TYPEBOT_START=false
      - WEBHOOK_EVENTS_TYPEBOT_CHANGE_STATUS=false
      - WEBHOOK_EVENTS_ERRORS=false
      - WEBHOOK_EVENTS_ERRORS_WEBHOOK=
      - WEBHOOK_REQUEST_TIMEOUT_MS=60000
      - WEBHOOK_RETRY_MAX_ATTEMPTS=10
      - WEBHOOK_RETRY_INITIAL_DELAY_SECONDS=5
      - WEBHOOK_RETRY_USE_EXPONENTIAL_BACKOFF=true
      - WEBHOOK_RETRY_MAX_DELAY_SECONDS=300
      - WEBHOOK_RETRY_JITTER_FACTOR=0.2
      - WEBHOOK_RETRY_NON_RETRYABLE_STATUS_CODES=400,401,403,404,422

    ## 🔌 Configuração do Provider
      - PROVIDER_ENABLED=false
      - PROVIDER_HOST=127.0.0.1
      - PROVIDER_PORT=5656
      - PROVIDER_PREFIX=evolution${1:+_$1}

    deploy:
      mode: replicated
      replicas: 1
      placement:
        constraints:
        - node.role == manager
      labels:
        - traefik.enable=1
        - traefik.http.routers.evolution${1:+_$1}.rule=Host(\`$url_evolution\`) ## Url da Evolution API
        - traefik.http.routers.evolution${1:+_$1}.entrypoints=websecure
        - traefik.http.routers.evolution${1:+_$1}.priority=1
        - traefik.http.routers.evolution${1:+_$1}.tls.certresolver=letsencryptresolver
        - traefik.http.routers.evolution${1:+_$1}.service=evolution${1:+_$1}
        - traefik.http.services.evolution${1:+_$1}.loadbalancer.server.port=8080
        - traefik.http.services.evolution${1:+_$1}.loadbalancer.passHostHeader=true

## --------------------------- ORION --------------------------- ##

  evolution${1:+_$1}_redis:
    image: redis:latest  ## Versão do Redis
    command: [
        "redis-server",
        "--appendonly",
        "yes",
        "--port",
        "6379"
      ]

    volumes:
      - evolution${1:+_$1}_redis:/data

    networks:
      - $nome_rede_interna ## Nome da rede interna

    ## Descomente as linhas abaixo para uso externo
    #ports:
    #  - 6379:6379

    deploy:
      placement:
        constraints:
          - node.role == manager
      resources:
        limits:
          cpus: "1"
          memory: 1024M

## --------------------------- ORION --------------------------- ##

volumes:
  evolution${1:+_$1}_instances:
    external: true
    name: evolution${1:+_$1}_instances
  evolution${1:+_$1}_redis:
    external: true
    name: evolution${1:+_$1}_redis

networks:
  $nome_rede_interna: ## Nome da rede interna
    external: true
    name: $nome_rede_interna ## Nome da rede interna
EOL
if [ $? -eq 0 ]; then
    echo "1/10 - [ OK ] - Criando Stack"
else
    echo "1/10 - [ OFF ] - Criando Stack"
    echo "Não foi possivel criar a stack da Evolution API"
fi
STACK_NAME="evolution${1:+_$1}"
stack_editavel # > /dev/null 2>&1
#docker stack deploy --prune --resolve-image always -c evolution.yaml evolution > /dev/null 2>&1

#if [ $? -eq 0 ]; then
#    echo "2/2 - [ OK ] - Deploy Stack"
#else
#    echo "2/2 - [ OFF ] - Deploy Stack"
#    echo "Não foi possivel subir a stack da Evolution API"
#fi

sleep 10

## Mensagem de Passo
echo -e "\e[97m• VERIFICANDO SERVIÇO \e[33m[4/4]\e[0m"
echo ""
sleep 1

## Baixando imagens:
pull redis:latest evoapicloud/evolution-api:latest

## Usa o serviço wait_evolution para verificar se o serviço esta online
wait_stack evolution${1:+_$1}_evolution${1:+_$1}_redis evolution${1:+_$1}_evolution${1:+_$1}_api

telemetria "Evolution API" "finalizado"

cd dados_vps

cat > dados_evolution${1:+_$1} <<EOL
[ EVOLUTION API ]

Manager Evolution: https://$url_evolution/manager

BaseUrl: https://$url_evolution

Global API Key: $apikeyglobal
EOL

cd
cd

## Espera 30 segundos
wait_30_sec

## Mensagem de finalizado
instalado_msg

## Mensagem de Guarde os Dados
guarde_os_dados_msg

## Dados da Aplicação:
echo -e "\e[32m[ EVOLUTION API ]\e[0m"
echo ""

echo -e "\e[97mManager da Evolution:\e[33m https://$url_evolution/manager\e[0m"
echo ""

echo -e "\e[97mBaseUrl:\e[33m https://$url_evolution\e[0m"
echo ""

echo -e "\e[97mGlobal API Key:\e[33m $apikeyglobal\e[0m"

## Creditos do instalador
creditos_msg

## Pergunta se deseja instalar outra aplicação
requisitar_outra_instalacao
}

ferramenta_evolution_go() {
    ## Evolution GO - instalação (implementar conforme necessidade)
    recursos 1 1 && continue || return
    clear
    echo -e "\e[97mEvolution GO\e[0m"
    echo ""
    echo -e "\e[33mIniciando instalação da Evolution GO...\e[0m"
    echo ""
    ## Aqui você coloca a lógica de instalação da Evolution GO
    ## Por enquanto apenas placeholder
    echo -e "\e[33m(Implemente aqui a instalação da Evolution GO)\e[0m"
    echo ""
}