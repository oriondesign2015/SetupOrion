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
echo -e "\e[97m                \e[33m                                                                              \e[0m"
echo -e "\e[97m     _          \e[33m _______                       _                   \e[0m"
echo -e "\e[97m    | |         \e[33m(_______)                     | |              _   \e[0m"
echo -e "\e[97m  __| |  ___    \e[33m    _     _   _  ____   _____ | |__    ___   _| |_ \e[0m"
echo -e "\e[97m / _  | / _ \   \e[33m   | |   | | | ||  _ \ | ___ ||  _ \  / _ \ (_   _)\e[0m"
echo -e "\e[97m( (_| || |_| |  \e[33m   | |   | |_| || |_| || ____|| |_) )| |_| |  | |_ \e[0m"
echo -e "\e[97m \____| \___/   \e[33m   |_|    \__  ||  __/ |_____)|____/  \___/    \__)\e[0m"
echo -e "\e[97m                \e[33m         (____/ |_|                                \e[0m"
echo -e "\e[97m\e[0m"
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
echo -e "\e[93mPasso \e[33m1/13\e[0m"
read -p "Digite a versão que deseja instalar (ex: latest | main | 2.16.0): " version
echo ""
echo -e "\e[93mPasso \e[33m2/13\e[0m"
read -p "Link do Builder (ex: typebot.seudominio.com): " builder
echo ""
echo -e "\e[93mPasso \e[33m3/13\e[0m"
read -p "Porta do Builder (padrão: 3001): " portabuilder
echo ""
echo -e "\e[93mPasso \e[33m4/13\e[0m"
read -p "Link do Viewer (ex: bot.seudominio.com): " viewer
echo ""
echo -e "\e[93mPasso \e[33m5/13\e[0m"
read -p "Porta do Viewer (padrão: 3002): " portaviewer
echo ""
echo -e "\e[93mPasso \e[33m6/13\e[0m"
read -p "Link do Storage (ex: storage.seudominio.com): " storage
echo ""
echo -e "\e[93mPasso \e[33m7/13\e[0m"
read -p "Porta do Storage (padrão: 9000): " portastorage
echo ""
echo -e "\e[93mPasso \e[33m8/13\e[0m"
read -p "Seu Email (ex: contato@dominio.com): " email
echo ""
echo -e "\e[93mPasso \e[33m9/13\e[0m"
read -p "Senha do seu Email (se for gmail, precisa ser a senha de aplicativo): " senha
echo ""
echo -e "\e[93mPasso \e[33m10/13\e[0m"
read -p "SMTP do seu email (ex: smtp.hostinger.com): " smtp
echo ""
echo -e "\e[93mPasso \e[33m11/13\e[0m"
read -p "Porta SMTP (ex: 465): " portasmtp
echo ""
echo -e "\e[93mPasso \e[33m12/13\e[0m"
read -p "SMTP_SECURE (Se a porta SMTP for 465, digite true, caso contrario,digite false): " SECURE
echo ""
echo -e "\e[93mPasso \e[33m13/13\e[0m"
echo "crie sua ApiKey no link: https://codebeautify.org/generate-random-hexadecimal-numbers"
read -p "Chave secreta de 32 caracteres: (ex: c56f3775313440c3edce57529a0f02b4): " key

#
# FIM DE PERGUNTAS PARA VARIAVEIS
#
#########################################################
#
# VERIFICAÇÃO DE DADOS
#

clear

echo ""
echo -e "Versão: \e[33m$version\e[0m"
echo -e "Link do Builder: \e[33m$builder\e[0m"
echo -e "Porta do Builder: \e[33m$portabuilder\e[0m"
echo -e "Link do Viewer: \e[33m$viewer\e[0m"
echo -e "Porta do Viewer: \e[33m$portaviewer\e[0m"
echo -e "Link do Storage: \e[33m$storage\e[0m"
echo -e "Porta do Storage: \e[33m$portastorage\e[0m"
echo -e "Seu Email: \e[33m$email\e[0m"
echo -e "Senha do seu Email: \e[33m$senha\e[0m"
echo -e "SMTP do seu email: \e[33m$smtp\e[0m"
echo -e "Porta SMTP: \e[33m$portasmtp\e[0m"
echo -e "SMTP_SECURE: \e[33m$SECURE\e[0m"
echo -e "Chave secreta: \e[33m$key\e[0m"
echo ""
echo ""
read -p "As informações estão certas? (y/n): " confirma1
if [ "$confirma1" == "y" ]; then

#
# FIM DE VERIFICAÇÃO DE DADOS
#
#########################################################
#
# MENSAGEM DE INSTALANDO
#

clear

echo -e "\e[32m\e[0m"
echo -e "\e[32m\e[0m"
echo -e "\e[32m _                             _                     _                 \e[0m"
echo -e "\e[32m| |                _          | |                   | |                \e[0m"
echo -e "\e[32m| | ____    ___  _| |_  _____ | |  _____  ____    __| |  ___           \e[0m"
echo -e "\e[32m| ||  _ \  /___)(_   _)(____ || | (____ ||  _ \  / _  | / _ \          \e[0m"
echo -e "\e[32m| || | | ||___ |  | |_ / ___ || | / ___ || | | |( (_| || |_| | _  _  _ \e[0m"
echo -e "\e[32m|_||_| |_|(___/    \__)\_____| \_)\_____||_| |_| \____| \___/ (_)(_)(_)\e[0m"
echo -e "\e[32m                                                                       \e[0m"
echo -e "\e[32m\e[0m"
echo -e "\e[32m\e[0m"

loading1 2 $width

#
# FIM DE MENSAGEM DE INSTALANDO
#
#########################################################
#
# INSTALANDO DEPENDENCIAS
#

cd
cd

clear

sudo apt update -y
sudo apt upgrade -y

apt install docker-compose -y
sudo apt update

sudo apt install nginx -y
sudo apt update

sudo apt install certbot -y
sudo apt install python3-certbot-nginx -y
sudo apt update

mkdir typebot.io
cd typebot.io
echo ""
echo ""
echo "Atualizado/Instalado com Sucesso"

sleep 3

clear

#
# FIM DE INSTALANDO DEPENDENCIAS
#
#######################################################
#
# CRIANDO DOCKER-COMPOSE.YML
#

sleep 3

cat > docker-compose.yml << EOL
version: '3.3'
services:
  typebot-db:
    image: postgres:13
    restart: always
    volumes:
      - db_data:/var/lib/postgresql/data
    environment:
      - POSTGRES_DB=typebot
      - POSTGRES_PASSWORD=typebot
  typebot-builder:
    ports:
      - $portabuilder:3000
    image: baptistearno/typebot-builder:$version
    restart: always
    depends_on:
      - typebot-db
    environment:
      - DATABASE_URL=postgresql://postgres:typebot@typebot-db:5432/typebot
      - NEXTAUTH_URL=https://$builder
      - NEXT_PUBLIC_VIEWER_URL=https://$viewer

      - DISABLE_SIGNUP=false

      #Google
      #- GOOGLE_CLIENT_ID=
      #- GOOGLE_CLIENT_SECRET=
      
      - ENCRYPTION_SECRET=$key

      - ADMIN_EMAIL=$email

      - SMTP_SECURE=$SECURE

      - SMTP_HOST=$smtp
      - SMTP_PORT=$portasmtp
      - SMTP_USERNAME=$email
      - SMTP_PASSWORD=$senha
      - NEXT_PUBLIC_SMTP_FROM='Suporte Typebot' <$email>

      - S3_ACCESS_KEY=minio
      - S3_SECRET_KEY=minio123
      - S3_BUCKET=typebot
      - S3_ENDPOINT=$storage
  typebot-viewer:
    ports:
      - $portaviewer:3000
    image: baptistearno/typebot-viewer:$version
    restart: always
    environment:
      - DATABASE_URL=postgresql://postgres:typebot@typebot-db:5432/typebot
      - NEXT_PUBLIC_VIEWER_URL=https://$viewer
      - ENCRYPTION_SECRET=$key
      - NEXTAUTH_URL=https://$builder

      #Google
      #- GOOGLE_CLIENT_ID=
      #- GOOGLE_CLIENT_SECRET=

      - S3_ACCESS_KEY=minio
      - S3_SECRET_KEY=minio123
      - S3_BUCKET=typebot
      - S3_ENDPOINT=$storage
  mail:
    image: bytemark/smtp
    restart: always
  minio:
    labels:
      virtual.host: '$storage'
      virtual.port: '$portastorage'
      virtual.tls-email: '$email'
    image: minio/minio
    command: server /data
    ports:
      - '$portastorage:$portastorage'
    environment:
      MINIO_ROOT_USER: minio
      MINIO_ROOT_PASSWORD: minio123
    volumes:
      - s3_data:/data
  createbuckets:
    image: minio/mc
    depends_on:
      - minio
    entrypoint: >
      /bin/sh -c "
      sleep 10;
      /usr/bin/mc config host add minio http://minio:$portastorage minio minio123;
      /usr/bin/mc mb minio/typebot;
      /usr/bin/mc anonymous set public minio/typebot/public;
      exit 0;
      "
volumes:
  db_data:
  s3_data:
EOL

clear

#
# FIM DE CRIANDO DOCKER-COMPOSE.YML
#
###############################################
#
# INICIANDO CONTAINER
#

docker-compose up -d

#
# FIM DE INICIANDO CONTAINER
#
###############################################
#
# FAZENDO PROXY REVERSO TYPEBOT
#

cd

cat > typebot << EOL
server {

  server_name $builder;

  location / {

    proxy_pass http://127.0.0.1:$portabuilder;

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

#
# FIM DE FAZENDO PROXY REVERSO TYPEBOT
#
###############################################
#
# CRIANDO LINK SIMBOLICO
#

sudo mv typebot /etc/nginx/sites-available/

sudo ln -s /etc/nginx/sites-available/typebot /etc/nginx/sites-enabled

#
# FIM DE CRIANDO LINK SIMBOLICO
#
###############################################
#
# FAZENDO PROXY REVERSO BOT
#

cd

cat > bot << EOL
server {

  server_name $viewer;

  location / {

    proxy_pass http://127.0.0.1:$portaviewer;

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

#
# FIM DE FAZENDO PROXY REVERSO BOT
#
###############################################
#
# CRIANDO LINK SIMBOLICO
#

sudo mv bot /etc/nginx/sites-available/

sudo ln -s /etc/nginx/sites-available/bot /etc/nginx/sites-enabled

#
# FIM DE CRIANDO LINK SIMBOLICO
#
##################################################
#
# FAZENDO PROXY REVERSO STORAGE
#

cd

cat > storage << EOL
server {

  server_name $storage;

  location / {

    proxy_pass http://127.0.0.1:$portastorage;

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

#
# FIM DE FAZENDO PROXY REVERSO TYPEBOT
#
###############################################
#
# CRIANDO LINK SIMBOLICO
#

sudo mv storage /etc/nginx/sites-available/

sudo ln -s /etc/nginx/sites-available/storage /etc/nginx/sites-enabled

#
# FIM DE CRIANDO LINK SIMBOLICO
#
###############################################
#
# CRIANDO CERTIFICADO SSL
#

sudo certbot --nginx --email $email --redirect --agree-tos -d $builder -d $viewer -d $storage

#
# FIM DE CRIANDO CERTIFICADO SSL
#
###############################################
#
# MENSAGEM DE INSTLADO + DADOS
#

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
echo -e "\e[32m\e[0m"
echo -e "\e[32m\e[0m"
echo -e "\e[32mAcesse o Builder através do link: https://$builder\e[0m"
echo -e "\e[32m\e[0m"
echo -e "\e[32mInscreva-se no meu Canal: https://youtube.com/oriondesign_oficial\e[0m"
echo -e "\e[32m\e[0m"
echo -e "\e[32mSugestões ou duvidas: https://wa.me/+5511973052593\e[0m"
echo -e "\e[32m\e[0m"
echo -e "\e[32m\e[0m"

#
# FIM DE MENSAGEM DE INSTLADO + DADOS
#
#########################################################
#
# USUARIO PREENCHEU DADOS ERRADOS
#

elif [ "$confirma1" == "n" ]; then
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
