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
echo -e "\e[97m _______                         ______                              \e[0m"
echo -e "\e[97m(_______)          _            (_____ \                             \e[0m"
echo -e "\e[97m _______  _   _  _| |_   ___     _____) )  ____   ___   _   _  _   _ \e[0m"
echo -e "\e[97m|  ___  || | | |(_   _) / _ \   |  ____/  / ___) / _ \ ( \ / )| | | |\e[0m"
echo -e "\e[97m| |   | || |_| |  | |_ | |_| |  | |      | |    | |_| | ) X ( | |_| |\e[0m"
echo -e "\e[97m|_|   |_||____/    \__) \___/   |_|      |_|     \___/ (_/ \_) \__  |\e[0m"
echo -e "\e[97m                                                              (____/ \e[0m"
echo -e "\e[97m  ___       ______   ______  _  \e[0m"
echo -e "\e[97m / _ \     / _____) / _____)| | \e[0m"
echo -e "\e[97m( (_) )   ( (____  ( (____  | | \e[0m"
echo -e "\e[97m ) _ (     \____ \  \____ \ | | \e[0m"
echo -e "\e[97m( (/  \    _____) ) _____) )| | \e[0m"
echo -e "\e[97m \__/\_)  (______/ (______/  \_)\e[0m"
echo -e "\e[97m                                \e[0m"
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
echo -e "\e[93mPasso \e[33m1/4\e[0m"
read -p "Qual é o nome da aplicação (Sem espaço ou caractere especial | exemplo: botpress): " aplicativo
echo ""
echo -e "\e[93mPasso \e[33m2/4\e[0m"
read -p "Qual link deseja criar o certificado SSL e proxy reverso (exemplo: site.oriondesign.art.br): " site
echo ""
echo -e "\e[93mPasso \e[33m3/4\e[0m"
read -p "Qual é a porta da aplicação (exemplo: 3001): " porta
echo ""
echo -e "\e[93mPasso \e[33m4/4\e[0m"
read -p "Digite seu email: " email
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
echo -e "\e[93m==============================================================================\e[0m"
echo -e "\e[93m=                                                                            =\e[0m"
echo -e "\e[93m=                 \e[33mVerifique se os dados abaixos estao certos\e[93m                 =\e[0m"
echo -e "\e[93m=                                                                            =\e[0m"
echo -e "\e[93m==============================================================================\e[0m"
echo ""

echo ""
echo -e "Aplicativo: \e[33m$aplicativo\e[0m"
echo -e "Link: \e[33m$site\e[0m"
echo -e "Porta: \e[33m$porta\e[0m"
echo -e "Email: \e[33m$email\e[0m"
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
echo -e "\e[32m _         _         _                    _        \e[0m"
echo -e "\e[32m| |       (_)       (_)                  | |       \e[0m"
echo -e "\e[32m| | ____   _   ____  _  _____  ____    __| |  ___  \e[0m"
echo -e "\e[32m| ||  _ \ | | / ___)| |(____ ||  _ \  / _  | / _ \ \e[0m"
echo -e "\e[32m| || | | || |( (___ | |/ ___ || | | |( (_| || |_| |\e[0m"
echo -e "\e[32m|_||_| |_||_| \____)|_|\_____||_| |_| \____| \___/ \e[0m"
echo -e "\e[32m                                                   \e[0m"
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

sudo apt install nginx -y
sudo apt update

sudo apt install certbot -y
sudo apt install python3-certbot-nginx -y
sudo apt update

#
# FIM DE INSTALANDO DEPENDENCIAS
#
#########################################################
#
# FAZENDO PROXY REVERSO TYPEBOT
#

cat > $aplicativo << EOL
server {

  server_name $site;

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

#
# FIM DE FAZENDO PROXY REVERSO TYPEBOT
#
###############################################
#
# CRIANDO LINK SIMBOLICO
#

sudo mv $aplicativo /etc/nginx/sites-available/

sudo ln -s /etc/nginx/sites-available/$aplicativo /etc/nginx/sites-enabled

#
# FIM DE CRIANDO LINK SIMBOLICO
#
###############################################
#
# CRIANDO CERTIFICADO SSL
#

sudo certbot --nginx --email $email --redirect --agree-tos -d $site

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
echo -e "\e[32m _______  _                _   _                    _        \e[0m"
echo -e "\e[32m(_______)(_)              | | (_)                  | |       \e[0m"
echo -e "\e[32m _____    _  ____   _____ | |  _  _____  _____   __| |  ___  \e[0m"
echo -e "\e[32m|  ___)  | ||  _ \ (____ || | | |(___  )(____ | / _  | / _ \ \e[0m"
echo -e "\e[32m| |      | || | | |/ ___ || | | | / __/ / ___ |( (_| || |_| |\e[0m"
echo -e "\e[32m|_|      |_||_| |_|\_____| \_)|_|(_____)\_____| \____| \___/ \e[0m"
echo -e "\e[32m                                                             \e[0m"
echo -e "\e[32m\e[0m"
echo -e "\e[32m\e[0m"
echo -e "\e[32m\e[0m"
echo -e "\e[32m\e[0m"
echo -e "\e[32mAcesse o Builder através do link: https://$site\e[0m"
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