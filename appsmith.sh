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
echo -e "\e[97m _                             _              _               \e[0m"
echo -e "\e[97m| |                _          | |            | |              \e[0m"
echo -e "\e[97m| | ____    ___  _| |_  _____ | |  _____   __| |  ___    ____ \e[0m"
echo -e "\e[97m| ||  _ \  /___)(_   _)(____ || | (____ | / _  | / _ \  / ___)\e[0m"
echo -e "\e[97m| || | | ||___ |  | |_ / ___ || | / ___ |( (_| || |_| || |    \e[0m"
echo -e "\e[97m|_||_| |_|(___/    \__)\_____| \_)\_____| \____| \___/ |_|    \e[0m"
echo -e "\e[97m                \e[33m                                              \e[0m"
echo -e "\e[97m     _          \e[33m _______                             _         _     \e[0m"
echo -e "\e[97m    | |         \e[33m(_______)                           (_)   _   | |    \e[0m"
echo -e "\e[97m  __| |  ___    \e[33m _______  ____   ____    ___  ____   _  _| |_ | |__  \e[0m"
echo -e "\e[97m / _  | / _ \   \e[33m|  ___  ||  _ \ |  _ \  /___)|    \ | |(_   _)|  _ \ \e[0m"
echo -e "\e[97m( (_| || |_| |  \e[33m| |   | || |_| || |_| ||___ || | | || |  | |_ | | | |\e[0m"
echo -e "\e[97m \____| \___/   \e[33m|_|   |_||  __/ |  __/ (___/ |_|_|_||_|   \__)|_| |_|\e[0m"
echo -e "\e[97m                \e[33m         |_|    |_|                                  \e[0m"
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
echo -e "\e[93mPasso \e[33m1/3\e[0m"
read -p "Digite seu dominio para acessar o appsmith (ex: painel.dominio.com): " linkappsmith
echo ""
echo -e "\e[93mPasso \e[33m2/3\e[0m"
read -p "Digite a porta para o appsmith (padrão: 8181): " portaappsmith
echo ""
echo -e "\e[93mPasso \e[33m3/3\e[0m"
read -p "Digite um email para o proxy reverso (ex: contato@dominio.com): " emailappsmith
echo ""
#
# FIM DE PERGUNTAS PARA VARIAVEIS
#
#########################################################
#
# VERIFICAÇÃO DE DADOS
#

clear

echo ""
echo -e "Dominio do Appsmith: \e[33m$linkappsmith\e[0m"
echo -e "Porta do Appsmith: \e[33m$portaappsmith\e[0m"
echo -e "Seu eEail: \e[33m$emailappsmith\e[0m"
echo ""
echo ""
read -p "As informações estão certas? (y/n): " confirma2
if [ "$confirma2" == "y" ]; then

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

#
# FIM DA INSTALAÇÃO DE DEPENDENCIAS
#
###########################
#
# INSTALAÇÃO DO APPSMITH
#

cd

mkdir appsmith

cd appsmith

curl -L https://bit.ly/docker-compose-CE -o $PWD/docker-compose.yml

sed -i "s/80:80/$portaappsmith:80/g" docker-compose.yml

sed -i 's/443:443/8443:443/g' docker-compose.yml

docker-compose up -d

#
# FIM DA INSTALAÇÃO DO APPSMITH
#
###########################
#
# PROXY REVERSO
#

cd

cat > appsmith_nginx << EOL
server {

  server_name $linkappsmith;

  location / {

    proxy_pass http://127.0.0.1:$portaappsmith;

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

sudo mv appsmith_nginx /etc/nginx/sites-available/

sudo ln -s /etc/nginx/sites-available/appsmith_nginx /etc/nginx/sites-enabled

systemctl reload nginx

sudo certbot --nginx --email $emailappsmith --redirect --agree-tos -d $linkappsmith

#
# FIM DO PROXY REVERSO
#
###############################################
#
# MENSAGEM DE INSTLADO + DADOS
#

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
echo -e "\e[32m\e[0m"
echo -e "\e[32mLink do seu Appsmith: https://$linkappsmith\e[0m"
echo -e "\e[32m\e[0m"
echo -e "\e[32mInscreva-se no meu Canal: https://youtube.com/oriondesign_oficial\e[0m"
echo -e "\e[32m\e[0m"
echo -e "\e[32mSugestões ou duvidas: https://wa.me/+5511973052593\e[0m"
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