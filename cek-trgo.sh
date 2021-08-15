#!/bin/bash
merah="\e[1;31m"
hijau="\e[1;32m"
NC="\e[0m"
clear
MYIP=$(curl -s ipinfo.io/ip);
IZIN=$(curl http://lostserver.my.id:81/akses | grep $MYIP)
if [ $MYIP = $IZIN ]; then
echo -e "${hijau}VPS berhasil diijinkan${NC}"
else
echo -e "${merah}VPS tidak diijinkan${NC}";
echo "Please Contact Admin"
echo "Telegram   : syntaxerr0r"
echo "WhatsApp   : 081326854629"
exit 0
fi
clear
data=( `cat /var/log/trojan-go.log | grep -w 'authenticated as' | awk '{print $7}' | sort | uniq`);
echo "-----------------------------------------------";
echo "------------=[ Trojan User Login ]=------------";
echo "-----------------------------------------------";
for akun in "${data[@]}"
do
data2=( `lsof -n | grep -i ESTABLISHED | grep trojan-go | awk '{print $9}' | cut -d':' -f2 | grep -w 445 | cut -d- -f2 | grep -v '>127.0.0.1' | sort | uniq | cut -d'>' -f2`);
echo -n > /tmp/iptrojan-go.txt
for ip in "${data2[@]}"
do
jum=$(cat /var/log/trojan-go.log | grep -w $akun | awk '{print $4}' | cut -d: -f1 | grep -w $ip | sort | uniq)
if [[ -z "$jum" ]]; then
echo > /dev/null
else
echo "$jum" > /tmp/iptrojan-go.txt
fi
done
jum2=$(cat /tmp/iptrojan-go.txt | nl)
echo "user : $akun";
echo "$jum2";
echo "-----------------------------------------------"
done
read -rp "Tekan enter untuk kembali ke Menu..."
menu
exit 0
fi