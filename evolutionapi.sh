#########################################################
#
# LOADING
#

loading() {
    local duration=2
    local width=$2 
    local interval=0.02
    local progress=0     

    while [ $progress -le 100 ]; do
        local bar=$(printf "[%-${width}s]" $(printf "=%.0s" $(seq 1 $(($progress * $width / 100)))))
        printf "\rCarregando Auto Instalador... $bar%3d%%" $progress
        sleep $interval
        progress=$((progress + 1))
    done

    clear
}

width=100

loading1() {
    local duration=2
    local width=$2 
    local interval=0.02
    local progress=0     

    while [ $progress -le 100 ]; do
        local bar=$(printf "[%-${width}s]" $(printf "=%.0s" $(seq 1 $(($progress * $width / 100)))))
        printf "\rIniciando Instalação... $bar%3d%%" $progress
        sleep $interval
        progress=$((progress + 1))
    done

    clear
}

amarelo="\e[33m"   # Amarelo
branco="\e[97m"    # Branco
reset="\e[0m"      # Reseta

#
# FIM DE LOADING
#
#########################################################
#
# CREDITOS
#

clear

echo -e "\e[32m\e[0m"
echo -e "\e[32m\e[0m"
echo -e "\e[32m ______             _____          _                _____                 _               \e[0m"
echo -e "\e[32m(____  \           / ___ \        (_)              (____ \               (_)              \e[0m"
echo -e "\e[32m ____)  ) _   _   | |   | |  ____  _   ___   ____   _   \ \   ____   ___  _   ____  ____  \e[0m"
echo -e "\e[32m|  __  ( | | | |  | |   | | / ___)| | / _ \ |  _ \ | |   | | / _  ) /___)| | / _  ||  _ \ \e[0m"
echo -e "\e[32m| |__)  )| |_| |  | |___| || |    | || |_| || | | || |__/ / ( (/ / |___ || |( ( | || | | |\e[0m"
echo -e "\e[32m|______/  \__  |   \_____/ |_|    |_| \___/ |_| |_||_____/   \____)(___/ |_| \_|| ||_| |_|\e[0m"
echo -e "\e[32m         (____/                                                             (_____|       \e[0m"
echo -e "\e[32m\e[0m"
echo -e "\e[32m\e[0m"

loading 2 $width

#
# FIM DE CREDITOS
#
#########################################################
#
# NOME DO PROGRAMA
#

clear

echo -e "\e[97m\e[0m"
echo -e "\e[97m\e[0m"
echo -e "\e[97m\e[0m"
echo -e "\e[97m _______                         _                             _              _               \e[0m"
echo -e "\e[97m(_______)          _            | |                _          | |            | |              \e[0m"
echo -e "\e[97m _______  _   _  _| |_   ___    | | ____    ___  _| |_  _____ | |  _____   __| |  ___    ____ \e[0m"
echo -e "\e[97m|  ___  || | | |(_   _) / _ \   | ||  _ \  /___)(_   _)(____ || | (____ | / _  | / _ \  / ___)\e[0m"
echo -e "\e[97m| |   | || |_| |  | |_ | |_| |  | || | | ||___ |  | |_ / ___ || | / ___ |( (_| || |_| || |    \e[0m"
echo -e "\e[97m|_|   |_||____/    \__) \___/   |_||_| |_|(___/    \__)\_____| \_)\_____| \____| \___/ |_|    \e[0m"
echo -e "\e[97m                \e[32m                                                                              \e[0m"
echo -e "\e[97m     _          \e[32m _______                _                 _                  _______  ______   _ \e[0m"
echo -e "\e[97m    | |         \e[32m(_______)              | |           _   (_)                (_______)(_____ \ | |\e[0m"
echo -e "\e[97m  __| | _____   \e[32m _____    _   _   ___  | |  _   _  _| |_  _   ___   ____     _______  _____) )| |\e[0m"
echo -e "\e[97m / _  |(____ |  \e[32m|  ___)  | | | | / _ \ | | | | | |(_   _)| | / _ \ |  _ \   |  ___  ||  ____/ | |\e[0m"
echo -e "\e[97m( (_| |/ ___ |  \e[32m| |_____  \ V / | |_| || | | |_| |  | |_ | || |_| || | | |  | |   | || |      | |\e[0m"
echo -e "\e[97m \____|\_____|  \e[32m|_______)  \_/   \___/  \_)|____/    \__)|_| \___/ |_| |_|  |_|   |_||_|      |_|\e[0m"
echo -e "\e[97m                \e[32m                                                                                 \e[0m"
echo -e "\e[97m\e[0m"
echo -e "\e[97m\e[0m"

#
# FIM DE NOME DO PROGRAMA
#
#########################################################
#
# PERGUNTAS PARA VARIAVEIS
#

echo ""
echo -e "\e[93m==============================================================================\e[0m"
echo -e "\e[93m=                                                                            =\e[0m"
echo -e "\e[93m=                 \e[33mPreencha as informações solicitadas abaixo\e[93m                 =\e[0m"
echo -e "\e[93m=                                                                            =\e[0m"
echo -e "\e[93m==============================================================================\e[0m"
echo ""
echo ""
echo ""
echo -e "\e[93mPasso \e[33m1/5\e[0m"
read -p "Digite seu dominio para acessar a api (ex: api.dominio.com): " dominio
echo ""
echo -e "\e[93mPasso \e[33m2/5\e[0m"
read -p "Digite a porta da api (padrão: 8080): " porta
echo ""
echo -e "\e[93mPasso \e[33m3/5\e[0m"
read -p "Digite o nome da sua empresa (ex: OrionDesign): " client
echo ""
echo -e "\e[93mPasso \e[33m4/5\e[0m"
#echo "crie sua ApiKey no link: https://codebeautify.org/generate-random-hexadecimal-numbers"
chave_hexadecimal=$(openssl rand -hex 16)
read -p "Digite a Api Global Key (sugestão gerada aleatóriamente: $chave_hexadecimal): " key
echo ""
echo -e "\e[93mPasso \e[33m5/5\e[0m"
read -p "Digite seu email (ex: contato@dominio.com | sera usado no proxy reverso): " mail
echo ""

#
# FIM DAS PERGUNTAS PARA VARIAVEIS
#
#########################################################
#
# VERIFICAÇÃO DE DADOS
#

clear

echo ""
echo -e "Dominio: \e[33m$dominio\e[0m"
echo -e "Porta: \e[33m$porta\e[0m"
echo -e "Nome da Empresa: \e[33m$client\e[0m"
echo -e "Api Global Key: \e[33m$key\e[0m"
echo -e "Seu Email: \e[33m$mail\e[0m"
echo ""
echo ""
read -p "As informações estão certas? (y/n): " confirma2
if [ "$confirma2" == "y" ]; then

#
# FIM DE VERIFICAÇÃO DE DADOS
#
#########################################################
#
# INSTALANDO AS DEPENDENCIAS
#

clear

sudo apt update -y

sudo apt upgrade -y

sudo apt-get update
sudo apt-get install -y ca-certificates curl gnupg
sudo mkdir -p /etc/apt/keyrings
curl -fsSL https://deb.nodesource.com/gpgkey/nodesource-repo.gpg.key | sudo gpg --dearmor -o /etc/apt/keyrings/nodesource.gpg

NODE_MAJOR=20
echo "deb [signed-by=/etc/apt/keyrings/nodesource.gpg] https://deb.nodesource.com/node_$NODE_MAJOR.x nodistro main" | sudo tee /etc/apt/sources.list.d/nodesource.list

sudo apt-get update
sudo apt-get install nodejs -y

#curl -sL https://deb.nodesource.com/setup_16.x | sudo -E bash - && apt-get install -y nodejs

npm install -g npm@latest

npm install -g pm2@latest && apt-get install -y git zip unzip nload snapd curl wget sudo

sudo timedatectl set-timezone America/Sao_Paulo

apt update && apt -y upgrade

apt-get install -y nginx

systemctl start nginx

systemctl enable nginx

snap install --classic certbot

rm /etc/nginx/sites-enabled/default

clear

cd

cd

#
# FIM DE INSTALANDO AS DEPENDENCIAS
#
#######################################################
#
# CLONANDO
#

git clone https://github.com/EvolutionAPI/evolution-api.git

#cd evolution-api

#git branch -a

#git checkout develop


#
# FIM DE CLONANDO
#
#######################################################
#
# CRIANDO ENV E INSTALANDO
#

cd

cd

cat > env.yml << EOL
# Choose the server type for the application
SERVER:
  TYPE: http # https
  PORT: $porta # 443
  URL: https://$dominio

CORS:
  ORIGIN:
    - "*"
    # - yourdomain.com
  METHODS:
    - POST
    - GET
    - PUT
    - DELETE
  CREDENTIALS: true

# Install ssl certificate and replace string <domain> with domain name
# Access: https://certbot.eff.org/instructions?ws=other&os=ubuntufocal
SSL_CONF:
  PRIVKEY: /etc/letsencrypt/live/<domain>/privkey.pem
  FULLCHAIN: /etc/letsencrypt/live/<domain>/fullchain.pem

# Determine the logs to be displayed
LOG:
  LEVEL:
    - ERROR
    - WARN
    - DEBUG
    - INFO
    - LOG
    - VERBOSE
    - DARK
    - WEBHOOKS
  COLOR: true
  BAILEYS: error # "fatal" | "error" | "warn" | "info" | "debug" | "trace"

# Determine how long the instance should be deleted from memory in case of no connection.
# Default time: 5 minutes
# If you don't even want an expiration, enter the value false
DEL_INSTANCE: false # or false

# Temporary data storage
STORE:
  MESSAGES: true
  MESSAGE_UP: true
  CONTACTS: true
  CHATS: true

CLEAN_STORE:
  CLEANING_INTERVAL: 7200 # 7200 seconds === 2h
  MESSAGES: true
  MESSAGE_UP: true
  CONTACTS: true
  CHATS: true

# Permanent data storage
DATABASE:
  ENABLED: false
  CONNECTION:
    URI: "mongodb://root:root@localhost:27017/?authSource=admin&readPreference=primary&ssl=false&directConnection=true"
    DB_PREFIX_NAME: evolution
  # Choose the data you want to save in the application's database or store
  SAVE_DATA:
    INSTANCE: false
    NEW_MESSAGE: false
    MESSAGE_UPDATE: false
    CONTACTS: false
    CHATS: false

REDIS:
  ENABLED: false
  URI: "redis://localhost:6379"
  PREFIX_KEY: "evolution"

RABBITMQ:
  ENABLED: false
  URI: "amqp://guest:guest@localhost:5672"

WEBSOCKET: 
  ENABLED: false

# Global Webhook Settings
# Each instance's Webhook URL and events will be requested at the time it is created
WEBHOOK:
  # Define a global webhook that will listen for enabled events from all instances
  GLOBAL:
    URL: <url>
    ENABLED: false
    # With this option activated, you work with a url per webhook event, respecting the global url and the name of each event
    WEBHOOK_BY_EVENTS: false
  # Automatically maps webhook paths
  # Set the events you want to hear
  EVENTS:
    APPLICATION_STARTUP: false
    QRCODE_UPDATED: true
    MESSAGES_SET: true
    MESSAGES_UPSERT: true
    MESSAGES_UPDATE: true
    MESSAGES_DELETE: true
    SEND_MESSAGE: true
    CONTACTS_SET: true
    CONTACTS_UPSERT: true
    CONTACTS_UPDATE: true
    PRESENCE_UPDATE: true
    CHATS_SET: true
    CHATS_UPSERT: true
    CHATS_UPDATE: true
    CHATS_DELETE: true
    GROUPS_UPSERT: true
    GROUP_UPDATE: true
    GROUP_PARTICIPANTS_UPDATE: true
    CONNECTION_UPDATE: true
    CALL: true
    # This event fires every time a new token is requested via the refresh route
    NEW_JWT_TOKEN: false

CONFIG_SESSION_PHONE:
  # Name that will be displayed on smartphone connection
  CLIENT: "$client"
  NAME: chrome # chrome | firefox | edge | opera | safari

# Set qrcode display limit
QRCODE:
  LIMIT: 30
  COLOR: '#198754'

# Defines an authentication type for the api
# We recommend using the apikey because it will allow you to use a custom token,
# if you use jwt, a random token will be generated and may be expired and you will have to generate a new token
AUTHENTICATION:
  TYPE: apikey # jwt or apikey
  # Define a global apikey to access all instances
  API_KEY:
    # OBS: This key must be inserted in the request header to create an instance.
    KEY: $key
  # Expose the api key on return from fetch instances
  EXPOSE_IN_FETCH_INSTANCES: true
  # Set the secret key to encrypt and decrypt your token and its expiration time.
  JWT:
    EXPIRIN_IN: 0 # seconds - 3600s === 1h | zero (0) - never expires
    SECRET: L=6544120E713976
EOL

sudo mv env.yml evolution-api/src/env.yml

cd

cd evolution-api

npm install

pm2 start 'npm run start:prod' --name ApiEvolution

pm2 startup

pm2 save --force

#
# FIM DE CRIANDO ENV E INSTALANDO
#
######################################################
#
# REALIZANDO PROXY REVERSO
#

clear

cd

cd

echo "Proxy Reverso"

cat > api << EOL
server {
  server_name $dominio;

  location / {
    proxy_pass http://127.0.0.1:$porta;
    proxy_http_version 1.1;
    proxy_set_header Upgrade \$http_upgrade;
    proxy_set_header Connection 'upgrade';
    proxy_set_header Host \$host;
    proxy_set_header X-Real-IP \$remote_addr;
    proxy_set_header X-Forwarded-Proto \$scheme;
    proxy_set_header X-Forwarded-For \$proxy_add_x_forwarded_for;
    proxy_cache_bypass \$http_upgrade;
  }
}
EOL

clear

cd

sudo mv api /etc/nginx/sites-available/api

ln -s /etc/nginx/sites-available/api /etc/nginx/sites-enabled

systemctl reload nginx

sudo certbot --nginx --email $mail --redirect --agree-tos -d $dominio

#
# FIM DE REALIZANDO PROXY REVERSO
#
#######################################################
#
# ARRUMANDO MANAGER
#

sed -i 's|https://manager.evolution-api.com|https://app.appsmith.com/app/novo-manager/home-65259b67441fc2031cd34918|' evolution-api/views/manager.hbs

#
# FIM DE ARRUMANDO MANAGER
#
#######################################################
#
# MENSAGEM DE INSTLADO + DADOS
#

cd
cd
echo -e "\e[32m\e[0m"
echo -e "\e[32m\e[0m"
echo -e "\e[32m\e[0m"
echo -e "\e[32m\e[0m"
echo -e "\e[32m\e[0m"
echo -e "\e[32m\e[0m"
echo -e "\e[32m\e[0m"
echo -e "\e[32m\e[0m"
echo -e "\e[32m\e[0m"
echo -e "\e[32m\e[0m"
echo -e "\e[32m\e[0m"
echo -e "\e[32m\e[0m"
echo -e "\e[32m _                             _              _        \e[0m"
echo -e "\e[32m| |                _          | |            | |       \e[0m"
echo -e "\e[32m| | ____    ___  _| |_  _____ | |  _____   __| |  ___  \e[0m"
echo -e "\e[32m| ||  _ \  /___)(_   _)(____ || | (____ | / _  | / _ \ \e[0m"
echo -e "\e[32m| || | | ||___ |  | |_ / ___ || | / ___ |( (_| || |_| |\e[0m"
echo -e "\e[32m|_||_| |_|(___/    \__)\_____| \_)\_____| \____| \___/ \e[0m"
echo -e "\e[32m                                                       \e[0m"              
echo -e "\e[32m\e[0m"
echo -e "\e[32m\e[0m"
echo -e "${amarelo}Api Url:${reset}: ${branco}https://$dominio${reset}"
echo -e "\e[32m\e[0m"
echo -e "${amarelo}Global Api Key${reset}: ${branco}$key${reset}"
echo -e "\e[32m\e[0m"
echo -e "${amarelo}Manager${reset}: ${branco}https://$dominio/manager${reset}"
echo -e "\e[32m\e[0m"
echo -e "${amarelo}Docs${reset}: ${branco}https://$dominio/docs${reset}"
echo -e "\e[32m\e[0m"
echo -e "${amarelo}Inscreva-se no meu Canal${reset}: ${branco}https://youtube.com/oriondesign_oficial${reset}"
echo -e "\e[32m\e[0m"
echo -e "${amarelo}Sugestões ou duvidas${reset}: ${branco}https://wa.me/+5511973052593${reset}"
echo -e "\e[32m\e[0m"
echo -e "\e[32m\e[0m"
echo -e "\e[32m\e[0m"
echo -e "\e[32m\e[0m"
echo -e "\e[32m\e[0m"
echo -e "\e[32m\e[0m"
echo -e "\e[32m\e[0m"
echo -e "\e[32m\e[0m"
echo -e "\e[32m\e[0m"
echo -e "\e[32m\e[0m"

#
# FIM DE MENSAGEM DE INSTLADO + DADOS
#
#########################################################
#
# USUARIO PREENCHEU DADOS ERRADOS
#

elif [ "$confirma2" == "n" ]; then
    echo "Encerrando a instalação, por favor, inicie a instalação novamente."
    exit 0
else
    echo "Resposta inválida. Digite 'y' para confirmar ou 'n' para encerrar a instalação."
    exit 1
fi

#
# FIM DE USUARIO PREENCHEU DADOS ERRADOS
#
#########################################################
