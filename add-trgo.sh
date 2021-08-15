#!/bin/bash
clear
echo "    Buat akun Trojan-Go"
echo "============================="
uuid=$(cat /etc/trojan-go/uuid.txt)
source /var/lib/premium-script/ipvps.conf
if [[ "$IP" = "" ]]; then
domain=$(cat /etc/v2ray/domain)
else
domain=$IP
fi
IP=$(curl -s ipinfo.io/ip);
trgo="$(cat ~/log-install.txt | grep -i Tr0jan-Go | cut -d: -f2|sed 's/ //g')"
until [[ $user =~ ^[a-zA-Z0-9_]+$ && ${user_EXISTS} == '0' ]]; do
                read -rp "Username: " -e user
                user_EXISTS=$(grep -w $user /etc/trojan-go/akun.conf | wc -l)

                if [[ ${user_EXISTS} == '1' ]]; then
                        echo ""
                        echo " Nama sudah ada, masukan nama yang lain."
                        sleep 2
            add-tr-go
                fi
        done
read -p "Expired (days): " masaaktif
sed -i '/"'""$uuid""'"$/a\,"'""$user""'"' /etc/trojan-go/config.json
exp=`date -d "$masaaktif days" +"%Y-%m-%d"`
echo -e "### $user $exp" >> /etc/trojan-go/akun.conf
trogolink="trojan-go://${user}@${domain}:${trgo}/?sni=${domain}&type=ws&host=${domain}&path=%2Ftrojan-go&encryption=none#${user}"
systemctl restart trojan-go
clear
echo
echo -e "================================="
echo -e "           Trojan-Go"
echo -e "================================="
echo -e "Address     : ${IP}"
echo -e "Host        : ${domain}"
echo -e "Port        : ${trgo}"
echo -e "Key         : ${user}"
echo -e "Type        : Websocket"
echo -e "Patch       : /trojan-go"
echo -e "Expired     : $exp"
echo -e "================================="
echo -e "Link        : ${trogolink}"
echo -e "================================="
echo
read -rp "Tekan enter untuk kembali ke Menu..."
menu
exit 0
fi