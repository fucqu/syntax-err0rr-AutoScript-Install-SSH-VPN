#!/bin/bash
red='\e[1;31m'
green='\e[0;32m'
NC='\e[0m'
MYIP=$(curl -s ipinfo.io/ip);
echo "Checking VPS"
IZIN=$(curl http://lostserver.my.id:81/akses | grep $MYIP)
if [ $MYIP = $IZIN ]; then
echo -e "${green}Permission Accepted...${NC}"
else
echo -e "${red}Permission Denied!${NC}";
echo "Only For Premium Users"
exit 0
fi
clear
NUMBER_OF_CLIENTS=$(grep -c -E "^### " "/etc/trojan-go/akun.conf")
    if [[ ${NUMBER_OF_CLIENTS} == '0' ]]; then
		echo ""
		echo "Tidak ada akun Trojan-Go yang akan dihapus"
		sleep 1
		menu
		exit 0
	fi

echo ""
echo " Pilih akun Trojan-Go yang akan dihapus"
echo " Tekan CTRL+C untuk membatalkan"
echo " =========================================="
echo "    No  User  Expired"
echo " =========================================="
grep -E "^### " "/etc/trojan-go/akun.conf" | cut -d ' ' -f 2-3 |      nl -s ') '
echo " ------------------------------------------"
until [[ ${CLIENT_NUMBER} -ge 1 && ${CLIENT_NUMBER} -le ${NUMBER_OF_CLIENTS} ]]; do
if [[ ${CLIENT_NUMBER} == '1' ]]; then
    read -rp "Select one client [1]: " CLIENT_NUMBER
else
    read -rp "Select one client [1-${NUMBER_OF_CLIENTS}]: " CLIENT_NUMBER
fi
done
CLIENT_NAME=$(grep -E "^### " "/etc/trojan-go/akun.conf" | cut -d ' ' -f 2-3 | sed -n "${CLIENT_NUMBER}"p)
user=$(grep -E "^### " "/etc/trojan-go/akun.conf" | cut -d ' ' -f 2 | sed -n "${CLIENT_NUMBER}"p)
exp=$(grep -E "^### " "/etc/trojan-go/akun.conf" | cut -d ' ' -f 3 | sed -n "${CLIENT_NUMBER}"p)
sed -i "/^### $user $exp/d" /etc/trojan-go/akun.conf
sed -i '/^,"'"$user"'"$/d' /etc/trojan-go/config.json
systemctl restart trojan-go
service cron restart
clear
echo
echo -e " Trojan-Go Account Deleted Successfully"
echo -e " ======================================"
echo -e " Client Name : $user"
echo -e " Expired On  : $exp"
echo -e " ======================================"
echo
read -rp " Tekan enter untuk kembali ke Menu..."
menu
exit 0
fi