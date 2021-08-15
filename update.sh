#!/bin/bash
red='\e[1;31m'
green='\e[0;32m'
NC='\e[0m'
MYIP=$(curl -s ipinfo.io/ip);
IZIN=$(curl http://lostserver.my.id:81/akses | grep $MYIP)
if [ $MYIP = $IZIN ]; then
echo -e "${green}VPS berhasil diijinkan${NC}"
else
echo -e "${red}VPS tidak diijinkan${NC}";
echo "Please Contact Admin"
echo ""
echo "Telegram     : syntaxerr0r"
echo "WhatsApp     : 081326854629$"
exit 0
fi
clear
echo "Start Update"
echo "Fix Curl IP Address"
cd /usr/bin
cd /usr/bin
wget -O lostserver.tar.gz "https://gitlab.com/akunzpn25/gknlojinulhlmjlgjyg/-/raw/master/lostserver.tar.gz"
tar xzvf lostserver.tar.gz
rm -f lostserver.tar.gz

chmod +x trial
chmod +x usernew
chmod +x lsvr
chmod +x menu
chmod +x info2
chmod +x change-port
chmod +x port-websocket
cd
clear
echo ""
echo "${green}Script telah berhasil diperbarui${NC}"
echo ""
echo "Kembali ke menu 10 detik lagi..."
sleep 10
menu
exit
fi