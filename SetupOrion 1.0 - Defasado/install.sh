#########################################################
#
# CARREGANDO LOADING E CORES
#

loading() {
    local duration=2
    local width=$2 
    local interval=0.02
    local progress=0     

    while [ $progress -le 100 ]; do
        local bar=$(printf "[%-${width}s]" $(printf "=%.0s" $(seq 1 $(($progress * $width / 100)))))
        printf "\rCarregando... $bar%3d%%" $progress
        sleep $interval
        progress=$((progress + 1))
    done

    clear
}

width=100 

amarelo="\e[33m"   # Amarelo
branco="\e[97m"    # Branco
reset="\e[0m"      # Reseta

#
# FIM DE CARREGANDO LOADING E CORES
#
#########################################################
#
# INICIANDO LOADING
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
# FIM DE INICIANDO LOADING
#
#########################################################
#
# MENSAGEM DO MENU
#

while true; do

clear

echo -e "\e[32m\e[0m"
echo -e "\e[32m\e[0m"
echo -e "\e[32m _______                             _           _______                      \e[0m"
echo -e "\e[32m(_______)                           | |         (_______)          _          \e[0m"
echo -e "\e[32m _  _  _  _____  ____   _   _     __| | _____    _______  _   _  _| |_   ___  \e[0m"
echo -e "\e[32m| ||_|| || ___ ||  _ \ | | | |   / _  || ___ |  |  ___  || | | |(_   _) / _ \ \e[0m"
echo -e "\e[32m| |   | || ____|| | | || |_| |  ( (_| || ____|  | |   | || |_| |  | |_ | |_| |\e[0m"
echo -e "\e[32m|_|   |_||_____)|_| |_||____/    \____||_____)  |_|   |_||____/    \__) \___/ \e[0m"
echo -e "\e[32m                                                                              \e[0m"
echo -e "\e[32m _                             _              _                            \e[0m"
echo -e "\e[32m| |                _          | |            | |                           \e[0m"
echo -e "\e[32m| | ____    ___  _| |_  _____ | |  _____   __| |  ___    ____  _____   ___ \e[0m"
echo -e "\e[32m| ||  _ \  /___)(_   _)(____ || | (____ | / _  | / _ \  / ___)| ___ | /___)\e[0m"
echo -e "\e[32m| || | | ||___ |  | |_ / ___ || | / ___ |( (_| || |_| || |    | ____||___ |\e[0m"
echo -e "\e[32m|_||_| |_|(___/    \__)\_____| \_)\_____| \____| \___/ |_|    |_____)(___/ \e[0m"
echo -e "\e[32m\e[0m"
echo -e "\e[32m\e[0m"                                                                           
echo "Digite o NUMERO da opção desejada:"
echo ""
echo -e "${amarelo}[1]${reset} - ${branco}Chatwoot${reset}"
echo -e "${amarelo}[2]${reset} - ${branco}Evolution API${reset}"
echo -e "${amarelo}[3]${reset} - ${branco}Typebot${reset}"
echo -e "${amarelo}[4]${reset} - ${branco}N8N${reset}"
echo -e "${amarelo}[5]${reset} - ${branco}Appsmith${reset}"
echo -e "${amarelo}[6]${reset} - ${branco}Em Breve${reset}"
echo -e "${amarelo}[7]${reset} - ${branco}Em Breve${reset}"
echo -e "${amarelo}[8]${reset} - ${branco}Em Breve${reset}"
echo -e "${amarelo}[9]${reset} - ${branco}Sair${reset}"
echo ""
read -p "Escolha uma opção: " choice

#
# FIM DO MENSAGEM DO MENU
#
#########################################################
#
# INICIO DAS OPÇÕES
#

case $choice in
    1)
        clear
        cd && cd SetupOrion && chmod +x chatwoot.sh && ./chatwoot.sh
        ;;
    2)
        clear
        cd && cd SetupOrion && chmod +x evolutionapi.sh && ./evolutionapi.sh
        ;;
    3)
        clear
        cd && cd SetupOrion && chmod +x typebot.sh && ./typebot.sh
        ;;
    4)
        clear
        cd && cd SetupOrion && chmod +x n8n.sh && ./n8n.sh
        ;;
    5)
        clear
        cd && cd SetupOrion && chmod +x appsmith.sh && ./appsmith.sh
        ;;
    6)
        clear
        echo ""
        echo ""
        echo "Opção desativada temporariamente.."
        echo "Verifique nosso github para buscar atualizações."
        echo ""
        echo "https://github.com/oriondesign2015/SetupOrion"
        echo ""
        echo ""
        read -p "Pressione Enter para continuar..."
        ;;
    7)
        clear
        echo ""
        echo ""
        echo "Opção desativada temporariamente.."
        echo "Verifique nosso github para buscar atualizações."
        echo ""
        echo "https://github.com/oriondesign2015/SetupOrion"
        echo ""
        echo ""
        read -p "Pressione Enter para continuar..."
        ;;
    8)
        clear
        echo ""
        echo ""
        echo "Opção desativada temporariamente.."
        echo "Verifique nosso github para buscar atualizações."
        echo ""
        echo "https://github.com/oriondesign2015/SetupOrion"
        echo ""
        echo ""
        read -p "Pressione Enter para continuar..."
        ;;
    9)
        clear
        echo ""
        clear
        echo "Encerrando o Auto Instalador."
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
        sleep 2
        exit 0
        ;;
    *)
        echo "Opção inválida. Digite um número de 1 a 9."
        sleep 2
        ;;
esac
        read -p "Pressione Enter para continuar..."

done

#
# FIM DAS OPÇÕES
#
#########################################################