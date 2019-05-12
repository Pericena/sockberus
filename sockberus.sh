#!/bin/bash


printf "                                                   \e[1;92m  \e[0m\n"
printf "                                                  \e[1;92m        \e[0m\n"                                                            
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
printf "\e[1;92m              Autores: Luishiño & FrogbAn502        \e[0m\e[1;92m    \e[0m\n"
printf "\e[1;93m                     Cyber Hacking         \e[1;92m \e[0m\n"



# http://pubproxy.com/#settings
# https://www.proxy-list.download/api/v1/get?type=http&anon=elite&country=US
# https://api.getproxylist.com/proxy
# https://api.ipify.org?format=json
# http://pubproxy.com/api/proxy
# https://api.getproxylist.com/proxy?country[]=CA&country[]=US
# ./scoket.sh -f proxy -t socks5 -m 5 -g good
#curl -L http://pubproxy.com/api/proxy?level=anonymous?raw=true
#wget -qO- https://luminati.io/static/lpm/luminati-proxy-latest-setup.sh | bash
#curl -L https://luminati.io/static/lpm/luminati-proxy-latest-setup.sh | bash

#date
#du -h ./* |& tee list.txt

PROXYS='proxy.txt'
PROXY_TYPE='http'
CHECK_URL='https://api.ipify.org?format=json'
MAX_CONNECT=10
GOOD_ARR=()
FAIL_ARR=()
GOOD=0
FAIL=0
# COLOR #
RED='\033[1;31m '
BLUE='\033[1;34m '
TUR='\033[1;36m '
YEL='\033[1;33m '
DEF='\033[0m '
# GET OPCION #
while getopts "h:ht:f:g:b:m:u:" OPTION
do
  case $OPTION in
    h)
      echo "Usage: $0 [-h - help] [-t <type> - type of proxy (http - default, socks4, socks5, socks5-hostname
	  (dns throught socks5))] [-f <file> - file with proxy, default proxy.txt] 
	  [-g <file> - archivo para proxy buenos]
	  [-b <file> - archivo para proxy malos]
	  [-u <url> - url para cheque proxy, por defecto $CHECK_URL] 
	  [-m <sec> - Tiempo máximo de conexión en segundos, predeterminado 10 segundos]"
      echo "proxy format: ip:port:username:password or ip:port"
      exit 0;;
    t)
      PROXY_TYPE="$OPTARG";;
    f)
      PROXYS="$OPTARG";;
    g)
      GOOD_FILE="$OPTARG";;
    b)
      FAIL_FILE="$OPTARG";;
    u)
      CHECK_URL="$OPTARG";;
    m)
      MAX_CONNECT="$OPTARG";;
  esac
done
# PROXY TYPE #
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

# CHECK CURL IF EXIST #
if ! which curl > /dev/null
then
  echo -e $RED"curl not found"$DEF
  exit 1
fi

# CHECK FILE WITH PROXY IF EXIST #
if ! [ -f $PROXYS > /dev/null ]
then
  echo -e $RED"Archivo con proxy no encontrado ($PROXYS)"$DEF
  exit 1
fi
# CHECK MAX TIME CONNECT #
RE='^[0-9]+$'
if ! [[ $MAX_CONNECT =~ $RE ]]
then
  echo -e $RED"Max connect - formato inválido[ ! ]"$DEF
  exit 1
fi

# CHECK PROXY #
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
    CHECK=$?
  else
    curl -s -m $MAX_CONNECT $PROXY_TYPE_COMMAND $IP:$PORT $CHECK_URL > /dev/null
    CHECK=$?
  fi
  if [[ $CHECK -eq 0 ]]
  then
    echo -e $TUR"[✔]$PROXY"$DEF
    GOOD=$(($GOOD+1))
    GOOD_ARR+=($PROXY)
	#ping $PROXY 
  else  
    echo -e $RED"[X]$PROXY"$DEF
    FAIL=$(($FAIL+1))
    FAIL_ARR+=($PROXY)
	#ping $PROXY
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
  
  curl $TUR"[✔]$PROXY" $RED"[X]$PROXY"$DEF $TUR"[✔]Proxys guardando en $GOOD_FILE" $BLUE"[✔]Proxy: $GOOD$ DEF, $RED [X]Proxy: $FAIL $DEF, $TUR all: $(($GOOD+$FAIL))" "[X]Proxies guardando en $FAIL_FILE">>comando >> archivo.txt
fi
 curl -s -m $MAX_CONNECT $PROXY_TYPE_COMMAND $IP:$PORT $CHECK_URL 
echo -e $BLUE"[✔]Proxy: $GOOD$ DEF, $RED [X]Proxy: $FAIL $DEF, $TUR all: $(($GOOD+$FAIL))" $DEF
exit 0