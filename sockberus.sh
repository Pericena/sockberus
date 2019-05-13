#!/bin/bash                                                           
printf "\e[1;90m           ░                                     ░         \e[0m\e[1;92m   \e[0m\n" 
printf "\e[1;90m        ▒▓ ▒▓ ░                              ░░ ▓░░▓░       \e[0m\e[1;92m   \e[0m\n"
printf "\e[1;90m         ██▓█  ▒░                           ▒░  █▓█▓        \e[0m\e[1;92m   \e[0m\n"
printf "\e[1;90m         ▓███   ██▓░     ▒░       ░▒     ▒███   ███▒        \e[0m\e[1;92m   \e[0m\n"
printf "\e[1;90m      ▒████▓█▓▓██████▓  ░█        ░█░  ▓█████▓▓▓█▓███▓░     \e[0m\e[1;92m   \e[0m\n"
printf "\e[1;90m     ███▓██▒████▓▓█████░ █▒       ▓█ ▒████▓▓▓███▓▒██▓██▓    \e[0m\e[1;92m   \e[0m\n"
printf "\e[1;90m     ██ ▒██▒█████▓▓▓██▓  ▒█▓███████░  ██▓▓▓▓█████▒██░ ██    \e[0m\e[1;92m   \e[0m\n"
printf "\e[1;90m    ██████▓███████▓█▓█▓  ▓█████████▒  ▓█▓█▓█████████████▓   \e[0m\e[1;92m   \e[0m\n"
printf "\e[1;90m  ▓████████████████▒███ █████████████ ███▒████████████████▓ \e[0m\e[1;92m   \e[0m\n"
printf "\e[1;90m▓░░███▓  ▒  ▒███████▒██▓▓███████████▓▓██▒███████▒  ▒ ░▓███░▒\e[0m\e[1;92m   \e[0m\n"
printf "\e[1;90m  ▓██▒ ▒   ▒███▓████▒█▓▓█  ▓█▓█▓█▓  █▓█▓▓████▓███░   ░ ▓██▒ \e[0m\e[1;92m   \e[0m\n"
printf "\e[1;90m   ░▒▓▓▓████▒ ▓████▓   ███▒▓█▓█▓█▓▓██▓  ░▓████▒ ▓████▓▓▒▒   \e[0m\e[1;92m   \e[0m\n"
printf "\e[1;90m      ▓███▒          ▒█ █████████████ █▒          ▒███▓     \e[0m\e[1;92m    \e[0m\n"
printf "\e[1;90m              ▒█████▓██░████▓   ▓████░██▓█████░             \e[0m\e[1;92m    \e[0m\n"
printf "\e[1;90m            ▒███████▓█▓▒█▓▒▒█▓ ▓█▒▒▓█▒██▓██████▓░           \e[0m\e[1;92m    \e[0m\n"
printf "\e[1;90m           ░███████▓██▒█▒░░ ░▓▓▓░  ▒▓█▓█▓▓███████           \e[0m\e[1;92m    \e[0m\n"
printf "\e[1;90m            ▓█████████ ███▓▓▒░▒░▓▓▓███ █████████▓           \e[0m\e[1;92m    \e[0m\n"
printf "\e[1;90m             ▒███████▓  ████████████▓  ████████▒            \e[0m\e[1;92m    \e[0m\n"
printf "\e[1;90m               ░▓██████░  ████████▓  ▒██████▓░              \e[0m\e[1;92m     \e[0m\n"
printf "\e[1;90m                    █████    ░▒░   ░█████                   \e[0m\e[1;92m    \e[0m\n"
printf "\e[1;90m                     ██████▓▒   ▒▓██████                    \e[0m\e[1;92m     \e[0m\n"
printf "\e[1;90m                      ▒███████████████▒                     \e[0m\e[1;92m     \e[0m\n"
printf "\e[1;90m                        ▒██████████▓░                       \e[0m\e[1;92m     \e[0m\n"
printf "\e[1;90m                           ▒▓███▓░                          \e[0m\e[1;92m     \e[0m\n"
printf "\e[1;92m              Autores: @Luishiño & @FrogbAn502        \e[0m\e[1;92m    \e[0m\n"
printf "\e[1;93m                     Cyber Hacking & App vwolff        \e[1;92m \e[0m\n"
echo -e "\e[1;100;97m                  Lista de proxy Socks5                          \e[0m"
ls *.txt
read -t 60 -p "Nombre del archivo a procesar :" PROXYS

#PROXYS='proxy.txt'
PROXY_TYPE='http'
CHECK_URL='proxy.json'
CHECK_URL1='script.json'
#https://api.ipify.org?format=json
MAX_CONNECT=10
GOOD_ARR=()
FAIL_ARR=()
GOOD=0
FAIL=0
RED='\033[1;31m '
BLUE='\033[1;34m '
TUR='\033[1;36m '
YEL='\033[1;33m '
DEF='\033[0m '
if [[ $PROXY_TYPE == "http" ]]
then
  PROXY_TYPE_COMMAND="--proxy"
elif [[  $PROXY_TYPE == "socks4" ]]
then
  PROXY_TYPE_COMMAND="--socks4"
elif [[ $PROXY_TYPE == "socks5" ]]
then
  PROXY_TYPE_COMMAND="--socks5"
elif [[ $PROXY_TYPE == "socks5-hostname" ]]
then
  PROXY_TYPE_COMMAND="--socks5-hostname"
else
  echo -e $RED"Unknown type proxy. Exit"$DEF
  exit 1
fi
if ! which curl > /dev/null
then
  echo -e $RED"curl not found"$DEF
  exit 1
fi
if ! [ -f $PROXYS > /dev/null ]
then
  echo -e $RED"Archivo con proxy no encontrado ($PROXYS)"$DEF
  exit 1
fi
RE='^[0-9]+$'
if ! [[ $MAX_CONNECT =~ $RE ]]
then
  echo -e $RED"Max connect - formato inválido[!]"$DEF
  exit 1
fi
for PROXY in $(<$PROXYS)
do
  unset USER PASS
  IP=$(echo $PROXY | awk -F: '{print $1}')
  PORT=$(echo $PROXY | awk -F: '{print $2}')
  USER=$(echo $PROXY | awk -F: '{print $3}')
  PASS=$(echo $PROXY | awk -F: '{print $4}')
  if [[ $USER && $PASS ]]
  then
    curl -s -m $MAX_CONNECT $PROXY_TYPE_COMMAND $IP:$PORT -U $USER:$PASS $CHECK_URL > /dev/null
	curl -s -m $MAX_CONNECT $PROXY_TYPE_COMMAND $IP:$PORT -U $USER:$PASS $CHECK_URL1 >>HOLA.txt
    CHECK=$?
  else
    curl -s -m $MAX_CONNECT $PROXY_TYPE_COMMAND $IP:$PORT $CHECK_URL > /dev/null
	curl -s -m $MAX_CONNECT $PROXY_TYPE_COMMAND $IP:$PORT -U $USER:$PASS $CHECK_URL1 >>Hola2.txt
    CHECK=$?
  fi
  if [[ $CHECK -eq 0 ]]
  then
    echo -e $TUR"[✔]$PROXY"$DEF
    GOOD=$(($GOOD+1))
    GOOD_ARR+=($PROXY)
	#ping $PROXY 
	echo $PROXY>>GOOD.txt
  else  
    echo -e $RED"[X]$PROXY"$DEF
    FAIL=$(($FAIL+1))
    FAIL_ARR+=($PROXY)
	#ping $PROXY
	echo $PROXY>>FAIL.txt
  fi
done
# FIN CHECK PROXY #
# GUARDAR PROXY  #
if [[ $GOOD_FILE ]]
then
  echo -n > $GOOD_FILE
  echo ${GOOD_ARR[@]} | tr " " "\n" >> $GOOD_FILE
  echo -e $TUR"[✔]Proxys guardando en $GOOD_FILE"$DEF
fi
if [[ $FAIL_FILE ]]
then
  echo -n > $FAIL_FILE
  echo ${FAIL_ARR[@]} | tr " " "\n" >> $FAIL_FILE
  echo -e $RED"[X]Proxies guardando en $FAIL_FILE"$DEF
fi
 curl -s -m $MAX_CONNECT $PROXY_TYPE_COMMAND $IP:$PORT $CHECK_URL 
echo -e $BLUE"[✔]Proxy: $TUR $GOOD $DEF, $RED [X]Proxy: $FAIL $DEF, $YEL Total: $(($GOOD+$FAIL))" $DEF
exit 0
