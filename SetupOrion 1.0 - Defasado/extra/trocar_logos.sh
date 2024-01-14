###########################################################
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
echo -e "\e[97m _______                       _   _                    _                      _        \e[0m"
echo -e "\e[97m(_______)   _                 | | (_)                  | |                    | |       \e[0m"
echo -e "\e[97m _______  _| |_  _   _  _____ | |  _  _____  _____   __| |  ___    ____     __| | _____ \e[0m"
echo -e "\e[97m|  ___  |(_   _)| | | |(____ || | | |(___  )(____ | / _  | / _ \  / ___)   / _  || ___ |\e[0m"
echo -e "\e[97m| |   | |  | |_ | |_| |/ ___ || | | | / __/ / ___ |( (_| || |_| || |      ( (_| || ____|\e[0m"
echo -e "\e[97m|_|   |_|   \__)|____/ \_____| \_)|_|(_____)\_____| \____| \___/ |_|       \____||_____)\e[0m"
echo -e "\e[97m                                                                                        \e[0m"
echo -e "\e[97m _                                    _          \e[36m _______  _                                               \e[0m"
echo -e "\e[97m| |                                  | |         \e[36m(_______)| |              _                           _   \e[0m"
echo -e "\e[97m| |   ___    ____   ___    ___     __| |  ___    \e[36m _       | |__   _____  _| |_  _ _ _   ___    ___   _| |_ \e[0m"
echo -e "\e[97m| |  / _ \  / _  | / _ \  /___)   / _  | / _ \   \e[36m| |      |  _ \ (____ |(_   _)| | | | / _ \  / _ \ (_   _)\e[0m"
echo -e "\e[97m| | | |_| |( (_| || |_| ||___ |  ( (_| || |_| |  \e[36m| |_____ | | | |/ ___ |  | |_ | | | || |_| || |_| |  | |_ \e[0m"
echo -e "\e[97m \_) \___/  \___ | \___/ (___/    \____| \___/   \e[36m \______)|_| |_|\_____|   \__) \___/  \___/  \___/    \__)\e[0m"
echo -e "\e[97m           (_____|                               \e[36m                                                          \e[0m"
echo -e "\e[97m\e[0m"
echo -e "\e[97m\e[0m"
echo -e "\e[97m\e[0m"

#
# FIM DE CREDITOS
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
echo -e "\e[93mPasso \e[33m1/1\e[0m"
read -p "Digite o link do seu logo: " link_img
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
echo -e "Link do seu logo: \e[33m$link_img\e[0m"
echo ""
echo ""
read -p "As informações estão certas? (y/n): " confirma1
if [ "$confirma1" == "y" ]; then

#
# FIM DE VERIFICAÇÃO DE DADOS
#
#########################################################
#
# MENSAGEM DE INICIANDO...
#

clear

echo -e "\e[97m\e[0m"
echo -e "\e[97m\e[0m"
echo -e "\e[97m\e[0m"
echo -e "\e[97m _         _         _                    _                 \e[0m"
echo -e "\e[97m| |       (_)       (_)                  | |                \e[0m"
echo -e "\e[97m| | ____   _   ____  _  _____  ____    __| |  ___           \e[0m"
echo -e "\e[97m| ||  _ \ | | / ___)| |(____ ||  _ \  / _  | / _ \          \e[0m"
echo -e "\e[97m| || | | || |( (___ | |/ ___ || | | |( (_| || |_| | _  _  _ \e[0m"
echo -e "\e[97m|_||_| |_||_| \____)|_|\_____||_| |_| \____| \___/ (_)(_)(_)\e[0m"
echo -e "\e[97m                                                            \e[0m"
echo -e "\e[97m\e[0m"
echo -e "\e[97m\e[0m"
echo -e "\e[97m\e[0m"

loading1 2 $width

#
# FIM DE INICIANDO...
#
#########################################################
#
# INSTALANDO DEPENDENCIAS
#

clear

cd

sudo apt update

apt upgrade -y

sudo apt-get install imagemagick

sudo apt update

#
# FIM DE INSTALANDO DEPENDENCIAS
#
#########################################################
#
# BAIXANDO IMAGEM
#

cd /home/chatwoot/chatwoot/public/

mkdir origem

cd

wget -P /home/chatwoot/chatwoot/public/origem/ $link_img

dir="/home/chatwoot/chatwoot/public/origem/"

filename=$(basename $dir/*)

mv $dir/$filename $dir/logo_thumbnail.png

#
# FIM BAIXANDO IMAGEM
#
#########################################################
#
# APAGANDO IMAGENS ORIGINAIS
#

cd

cd /home/chatwoot/chatwoot/public/

rm android-icon-36x36.png apple-icon-precomposed.png favicon-16x16.png apple-icon-72x72.png apple-icon-114x114.png apple-icon-144x144.png apple-icon-152x152.png apple-icon.png apple-icon-57x57.png favicon-32x32.png favicon-badge-32x32.png apple-icon-76x76.png android-icon-72x72.png favicon-512x512.png apple-icon-60x60.png favicon-96x96.png apple-icon-180x180.png android-icon-144x144.png ms-icon-310x310.png ms-icon-144x144.png android-icon-48x48.png favicon-badge-96x96.png apple-icon-120x120.png android-icon-96x96.png ms-icon-70x70.png android-icon-192x192.png ms-icon-150x150.png favicon-badge-16x16.png

cd

#
# FIM APAGANDO IMAGENS ORIGINAIS
#
#########################################################
#
# CRIANDO NOVAS IMAGENS
#

convert /home/chatwoot/chatwoot/public/origem/logo_thumbnail.png -resize 36x36 /home/chatwoot/chatwoot/public/android-icon-36x36.png

convert /home/chatwoot/chatwoot/public/origem/logo_thumbnail.png -resize 192x192 /home/chatwoot/chatwoot/public/apple-icon-precomposed.png

convert /home/chatwoot/chatwoot/public/origem/logo_thumbnail.png -resize 16x16 /home/chatwoot/chatwoot/public/favicon-16x16.png

convert /home/chatwoot/chatwoot/public/origem/logo_thumbnail.png -resize 72x72 /home/chatwoot/chatwoot/public/apple-icon-72x72.png

convert /home/chatwoot/chatwoot/public/origem/logo_thumbnail.png -resize 114x114 /home/chatwoot/chatwoot/public/apple-icon-114x114.png

convert /home/chatwoot/chatwoot/public/origem/logo_thumbnail.png -resize 144x144 /home/chatwoot/chatwoot/public/apple-icon-144x144.png

convert /home/chatwoot/chatwoot/public/origem/logo_thumbnail.png -resize 152x152 /home/chatwoot/chatwoot/public/apple-icon-152x152.png

convert /home/chatwoot/chatwoot/public/origem/logo_thumbnail.png -resize 192x192 /home/chatwoot/chatwoot/public/apple-icon.png

convert /home/chatwoot/chatwoot/public/origem/logo_thumbnail.png -resize 57x57 /home/chatwoot/chatwoot/public/apple-icon-57x57.png

convert /home/chatwoot/chatwoot/public/origem/logo_thumbnail.png -resize 32x32 /home/chatwoot/chatwoot/public/favicon-32x32.png

convert /home/chatwoot/chatwoot/public/origem/logo_thumbnail.png -resize 32x32 /home/chatwoot/chatwoot/public/favicon-badge-32x32.png

convert /home/chatwoot/chatwoot/public/origem/logo_thumbnail.png -resize 76x76 /home/chatwoot/chatwoot/public/apple-icon-76x76.png

convert /home/chatwoot/chatwoot/public/origem/logo_thumbnail.png -resize 72x72 /home/chatwoot/chatwoot/public/android-icon-72x72.png

convert /home/chatwoot/chatwoot/public/origem/logo_thumbnail.png -resize 512x512 /home/chatwoot/chatwoot/public/favicon-512x512.png

convert /home/chatwoot/chatwoot/public/origem/logo_thumbnail.png -resize 60x60 /home/chatwoot/chatwoot/public/apple-icon-60x60.png

convert /home/chatwoot/chatwoot/public/origem/logo_thumbnail.png -resize 96x96 /home/chatwoot/chatwoot/public/favicon-96x96.png

convert /home/chatwoot/chatwoot/public/origem/logo_thumbnail.png -resize 180x180 /home/chatwoot/chatwoot/public/apple-icon-180x180.png

convert /home/chatwoot/chatwoot/public/origem/logo_thumbnail.png -resize 144x144 /home/chatwoot/chatwoot/public/android-icon-144x144.png

convert /home/chatwoot/chatwoot/public/origem/logo_thumbnail.png -resize 310x310 /home/chatwoot/chatwoot/public/ms-icon-310x310.png

convert /home/chatwoot/chatwoot/public/origem/logo_thumbnail.png -resize 144x144 /home/chatwoot/chatwoot/public/ms-icon-144x144.png

convert /home/chatwoot/chatwoot/public/origem/logo_thumbnail.png -resize 48x48 /home/chatwoot/chatwoot/public/android-icon-48x48.png

convert /home/chatwoot/chatwoot/public/origem/logo_thumbnail.png -resize 96x96 /home/chatwoot/chatwoot/public/favicon-badge-96x96.png

convert /home/chatwoot/chatwoot/public/origem/logo_thumbnail.png -resize 120x120 /home/chatwoot/chatwoot/public/apple-icon-120x120.png

convert /home/chatwoot/chatwoot/public/origem/logo_thumbnail.png -resize 96x96 /home/chatwoot/chatwoot/public/android-icon-96x96.png

convert /home/chatwoot/chatwoot/public/origem/logo_thumbnail.png -resize 70x70 /home/chatwoot/chatwoot/public/ms-icon-70x70.png

convert /home/chatwoot/chatwoot/public/origem/logo_thumbnail.png -resize 192x192 /home/chatwoot/chatwoot/public/android-icon-192x192.png

convert /home/chatwoot/chatwoot/public/origem/logo_thumbnail.png -resize 150x150 /home/chatwoot/chatwoot/public/ms-icon-150x150.png

convert /home/chatwoot/chatwoot/public/origem/logo_thumbnail.png -resize 16x16 /home/chatwoot/chatwoot/public/favicon-badge-16x16.png

#
# FIM CRIANDO NOVAS IMAGEN
#
#########################################################
#
# REBUILDANDO O CHATWOOT
#

# 
#
#cd chatwoot
#
#rake assets:precompile RAILS_ENV=production
#
#exit

systemctl daemon-reload && systemctl restart chatwoot.target

#
# FIM REBUILDANDO O CHATWOOT
#
#########################################################
#
# MENSAGEM DE FINALIZAÇÃO
#

clear

echo -e "\e[97m\e[0m"
echo -e "\e[97m\e[0m"
echo -e "\e[97m\e[0m"
echo -e "\e[97m _______  _                _   _                    _        \e[0m"
echo -e "\e[97m(_______)(_)              | | (_)                  | |       \e[0m"
echo -e "\e[97m _____    _  ____   _____ | |  _  _____  _____   __| |  ___  \e[0m"
echo -e "\e[97m|  ___)  | ||  _ \ (____ || | | |(___  )(____ | / _  | / _ \ \e[0m"
echo -e "\e[97m| |      | || | | |/ ___ || | | | / __/ / ___ |( (_| || |_| |\e[0m"
echo -e "\e[97m|_|      |_||_| |_|\_____| \_)|_|(_____)\_____| \____| \___/ \e[0m"
echo -e "\e[97m                                                             \e[0m"
echo -e "\e[97m\e[0m"
echo -e "\e[97meInscreva-se no meu Canal: https://youtube.com/oriondesign_oficial\e[0m"
echo -e "\e[97m\e[0m"

#
# FIM MENSAGEM DE FINALIZAÇÃO
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
