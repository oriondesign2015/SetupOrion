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
echo -e "\e[97m                                                                                              \e[0m"
echo -e "\e[97m     _          \e[36m _______  _                                               \e[0m"
echo -e "\e[97m    | |         \e[36m(_______)| |              _                           _   \e[0m"
echo -e "\e[97m  __| |  ___    \e[36m _       | |__   _____  _| |_  _ _ _   ___    ___   _| |_ \e[0m"
echo -e "\e[97m / _  | / _ \   \e[36m| |      |  _ \ (____ |(_   _)| | | | / _ \  / _ \ (_   _)\e[0m"
echo -e "\e[97m( (_| || |_| |  \e[36m| |_____ | | | |/ ___ |  | |_ | | | || |_| || |_| |  | |_ \e[0m"
echo -e "\e[97m \____| \___/   \e[36m \______)|_| |_|\_____|   \__) \___/  \___/  \___/    \__)\e[0m"
echo -e "\e[97m                \e[36m                                                          \e[0m"
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
echo -e "\e[93mPasso \e[33m1/7\e[0m"
read -p "Digite o dominio para acessar o Chatwoot (ex: app.dominio.com): " dominiochat
echo ""
echo -e "\e[93mPasso \e[33m2/7\e[0m"
read -p "Digite o nome da sua empresa (ex: OrionDesign): " empresachatwoot
echo ""
echo -e "\e[93mPasso \e[33m3/7\e[0m"
read -p "Digite seu email de admin (ex: contato@dominio.com): " emailchat
echo ""
echo -e "\e[93mPasso \e[33m4/7\e[0m"
read -p "Digite o Dominio do seu SMTP (ex: oriondesign.art.br | ex: gmail.com): " dominiosmtpchatwoot
echo ""
echo -e "\e[93mPasso \e[33m5/7\e[0m"
read -p "Digite o Host SMTP (ex: smtp.hostinger.com): " smtpchatwoot
echo ""
echo -e "\e[93mPasso \e[33m6/7\e[0m"
read -p "Digite a Porta SMTP (ex: 465): " portachatwoot
echo ""
echo -e "\e[93mPasso \e[33m7/7\e[0m"
read -p "Senha do seu Email (se for Gmail precisa ser senha de aplicativo): " senhaemailchatwoot
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
echo -e "Link do chatwoot: \e[33m$dominiochat\e[0m"
echo -e "Nome da empresa: \e[33m$empresachatwoot\e[0m"
echo -e "Email admin: \e[33m$emailchat\e[0m"
echo -e "Dominio SMTP: \e[33m$dominiosmtpchatwoot\e[0m"
echo -e "Host SMTP: \e[33m$smtpchatwoot\e[0m"
echo -e "Porta SMTP: \e[33m$portachatwoot\e[0m"
echo -e "Senha do Email: \e[33m$senhaemailchatwoot\e[0m"
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

sudo apt update

apt upgrade -y

#
sudo apt-get update
sudo apt-get install -y ca-certificates curl gnupg
sudo mkdir -p /etc/apt/keyrings
curl -fsSL https://deb.nodesource.com/gpgkey/nodesource-repo.gpg.key | sudo gpg --dearmor -o /etc/apt/keyrings/nodesource.gpg

NODE_MAJOR=20
echo "deb [signed-by=/etc/apt/keyrings/nodesource.gpg] https://deb.nodesource.com/node_$NODE_MAJOR.x nodistro main" | sudo tee /etc/apt/sources.list.d/nodesource.list

sudo apt-get update
sudo apt-get install nodejs -y
#

sudo timedatectl set-timezone America/Sao_Paulo

#
# FIM DE INSTALANDO DEPENDENCIAS
#
#########################################################
#
# BAIXANDO CHATWOOT E EXECUTANDO
#

wget https://get.chatwoot.app/linux/install.sh

chmod +x install.sh

clear

echo -e "yes\n$dominiochat\n$emailchat\nyes\nyes" | ./install.sh --install

#
# FIM DE BAIXANDO CHATWOOT E EXECUTANDO
#
#########################################################
#
# EDITANDO .ENV + GUARDANDO POSTGRES
#

cd

cd /home/chatwoot/chatwoot

postgres_password=$(grep -oP '(?<=POSTGRES_PASSWORD=).+' /home/chatwoot/chatwoot/.env)

##ANTIGO
#sed -i "s/# DEFAULT_LOCALE=en/DEFAULT_LOCALE=pt_BR/g" /home/chatwoot/chatwoot/.env
#sed -i "s/ENABLE_ACCOUNT_SIGNUP=false/ENABLE_ACCOUNT_SIGNUP=true/g" /home/chatwoot/chatwoot/.env
#sed -i "s/^MAILER_SENDER_EMAIL=.*/MAILER_SENDER_EMAIL='$empresachatwoot <$emailchat>'/" /home/chatwoot/chatwoot/.env
#sed -i "s/^FRONTEND_URL=.*/FRONTEND_URL=https://$dominiochat" /home/chatwoot/chatwoot/.env
#sed -i "s/^SMTP_DOMAIN=.*/SMTP_DOMAIN=$dominiosmtpchatwoot/" /home/chatwoot/chatwoot/.env
#sed -i "s/^SMTP_ADDRESS=.*/SMTP_ADDRESS=$smtpchatwoot/" /home/chatwoot/chatwoot/.env
#sed -i "s/^SMTP_PORT=.*/SMTP_PORT=$portachatwoot/" /home/chatwoot/chatwoot/.env
#sed -i "s/^SMTP_USERNAME=.*/SMTP_USERNAME=$emailchat/" /home/chatwoot/chatwoot/.env
#sed -i "s/^SMTPOR_PASSWD=.*/SMTP_PASSWORD=$senhaemailchatwoot/" /home/chatwoot/chatwoot/.env
#sed -i "s/^SMTP_AUTHENTICATION=.*/SMTP_AUTHENTICATION=login/" /home/chatwoot/chatwoot/.env
#sed -i "s/^FORCE_SSL=.*/FORCE_SSL=true/" /home/chatwoot/chatwoot/.env
##

##NOVO
#sed -i "s/# DEFAULT_LOCALE=en/DEFAULT_LOCALE=pt_BR/g" /home/chatwoot/chatwoot/.env
#sed -i "s#ENABLE_ACCOUNT_SIGNUP=false#ENABLE_ACCOUNT_SIGNUP=true#g" /home/chatwoot/chatwoot/.env
#sed -i "s#^MAILER_SENDER_EMAIL=.*#MAILER_SENDER_EMAIL='$empresachatwoot <$emailchat>'#" /home/chatwoot/chatwoot/.env
#sed -i "s#^FRONTEND_URL=.*#FRONTEND_URL=https://$dominiochat/#" /home/chatwoot/chatwoot/.env
#sed -i "s#^SMTP_DOMAIN=.*#SMTP_DOMAIN=$dominiosmtpchatwoot#" /home/chatwoot/chatwoot/.env
#sed -i "s#^SMTP_ADDRESS=.*#SMTP_ADDRESS=$smtpchatwoot#" /home/chatwoot/chatwoot/.env
#sed -i "s#^SMTP_PORT=.*#SMTP_PORT=$portachatwoot#" /home/chatwoot/chatwoot/.env
#sed -i "s#^SMTP_USERNAME=.*#SMTP_USERNAME=$emailchat#" /home/chatwoot/chatwoot/.env
#sed -i "s#^SMTP_PASSWORD=.*#SMTP_PASSWORD=$senhaemailchatwoot#" /home/chatwoot/chatwoot/.env
#sed -i "s#^SMTP_AUTHENTICATION=.*#SMTP_AUTHENTICATION=login#" /home/chatwoot/chatwoot/.env
#sed -i "s#^FORCE_SSL=.*#FORCE_SSL=true#" /home/chatwoot/chatwoot/.env
#sed -i 's/^# SMTP_TLS=/SMTP_TLS=true/' /home/chatwoot/chatwoot/.env
##

##NOVO 2
sed -i "s/# DEFAULT_LOCALE=en/DEFAULT_LOCALE=pt_BR/g" /home/chatwoot/chatwoot/.env
sed -i "s/ENABLE_ACCOUNT_SIGNUP=false/ENABLE_ACCOUNT_SIGNUP=true/g" /home/chatwoot/chatwoot/.env
sed -i "s/^MAILER_SENDER_EMAIL=.*/MAILER_SENDER_EMAIL='$empresachatwoot <$emailchat>'/" /home/chatwoot/chatwoot/.env
#sed -i 's/^FRONTEND_URL=.*/FRONTEND_URL=https:\/\/$dominiochat/' /home/chatwoot/chatwoot/.env
sed -i "s^FRONTEND_URL=.*^FRONTEND_URL=https://$dominiochat^" /home/chatwoot/chatwoot/.env
sed -i "s/^SMTP_DOMAIN=.*/SMTP_DOMAIN=$dominiosmtpchatwoot/" /home/chatwoot/chatwoot/.env
sed -i "s/^SMTP_ADDRESS=.*/SMTP_ADDRESS=$smtpchatwoot/" /home/chatwoot/chatwoot/.env
sed -i "s/^SMTP_PORT=.*/SMTP_PORT=$portachatwoot/" /home/chatwoot/chatwoot/.env
sed -i "s/^SMTP_USERNAME=.*/SMTP_USERNAME=$emailchat/" /home/chatwoot/chatwoot/.env
sed -i "s/^SMTP_PASSWORD=.*/SMTP_PASSWORD=$senhaemailchatwoot/" /home/chatwoot/chatwoot/.env
sed -i "s/^SMTP_AUTHENTICATION=.*/SMTP_AUTHENTICATION=login/" /home/chatwoot/chatwoot/.env
sed -i "s/^FORCE_SSL=.*/FORCE_SSL=true/" /home/chatwoot/chatwoot/.env
sed -i "s/^# SMTP_TLS=/SMTP_TLS=true/" /home/chatwoot/chatwoot/.env


##DICA DO NESTOR DAVALOS
sed -i 's/locale: '\''en'\''/locale: '\''pt_BR'\''/' /home/chatwoot/chatwoot/app/javascript/packs/v3app.js
##

##RECOMPILANDO
sudo -i -u chatwoot <<EOF
cd chatwoot
rake assets:precompile RAILS_ENV=production
exit
EOF

cwctl -r
##

systemctl daemon-reload && systemctl restart chatwoot.target

#
# FIM DE EDITANDO .ENV + GUARDANDO POSTGRES
#
#########################################################
#
# HABILITANDO CONFIGURAÇÕES OCULTAS DO CHATWOOT
#


#sudo -u postgres psql -d chatwoot_production <<EOF
#update installation_configs set locked = false;
#\q
#EOF

sudo -u postgres psql -d chatwoot_production -c "UPDATE installation_configs SET locked = false;"

#
# FIM DE HABILITANDO CONFIGURAÇÕES OCULTAS DO CHATWOOT
#
#########################################################
#
# MENSAGEM DE INSTLADO + DADOS
#

cd
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
echo -e "${amarelo}Acesse seu Chatwoot${reset}: ${branco}https://$dominiochat${reset}"
echo -e "\e[32m\e[0m"
echo -e "${amarelo}Senha postgres${reset}: ${branco}https://$postgres_password${reset}"
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
