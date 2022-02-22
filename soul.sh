#!/bin/bash

clear
echo ''
echo 'Digite seu codigo de usuario privado.'
echo ''
read user
if [ $user == "sl10j2007" ]
then
clear
echo "Olá, $user. Seja bem vindo á mais uma interface desenvolvida por GhostHave."
echo 'Você tem as seguintes opções:'
else
echo 'Código de usuario privado inválido. Tente novamente.'
exit
fi
###################################################
# CTRL + C
###################################################
trap ctrl_c INT
ctrl_c() {
clear
echo  "Iniciando protocolo de saída de emergencia"
echo ""
echo  "NÃO USE PARA FINS ILEGAIS"
sleep 1
echo ""
echo "GhostWave - Hacking Tools"
echo ""
echo "Até logo, $user"
echo ""
sleep 1
exit
}

lagi=01
while [ $lagi -lt 20 ];
do
echo ""
echo -e "[01] PHP WebServer";
echo -e "[02] RED_HAWK"
echo -e "[03] Lazymux"
echo -e "[04] Onex"
echo -e "[00] Sair"
echo ''
echo  "╭─Gh0stW4v3"
read -p "╰──►" pil;
#PHPWS

case $pil in
01) clear
echo "ONDA FANTASMA - Iniciando Servidor Web";
cd $home/webserver/
php -S localhost:8080
echo "Serviço iniciado!";
echo ''
echo 'localhost:8080'
clear
;;

#REDHAWK

02) clear
echo "Iniciando a instalação da ferramenta."
git clone https://github.com/Tuhinshubhra/RED_HAWK
cd RED_HAWK
php rhawk.php
clear
;;

#LAZYMUX
03) clear
apt install python git
git clone https://github.com/Gameye98/Lazymux
cd Lazymux
python lazymux.py
clear
;;

#ONEX
04) clear
git clone https://github.com/rajkumardusad/onex.git
chmod +x onex/install
sh ./onex/install
clear
;;

#SAIDA

00) clear
echo 'Iniciando protocolo de saída.'
sleep 1
exit
;;

esac
done
done
