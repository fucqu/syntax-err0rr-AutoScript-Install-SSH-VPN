#!/bin/bash
merah="\e[1;31m"
hijau="\e[1;32m"
kuning="\e[1;33m"
biru="\e[1;34m"
putih="\e[1;37m"
cyan="\e[1;36m"
NC="\e[1;37m"
MYIP=$(curl -s ipinfo.io/ip);
IZIN=$(curl http://lostserver.my.id:81/akses | grep $MYIP )
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
echo -e ""
echo -e "${putih}=================================================================${NC}"
echo -e "                           ${merah}LOSTSERVER™${NC}"
echo -e "${putih}=================================================================${NC}"
echo -e "${kuning} SSH DAN OPENVPN${NC}"
echo -e "${merah}  1${putih}. Buat akun SSH dan OpenVPN (${biru}usernew${NC})"
echo -e "${merah}  2${putih}. Buat akun SSH dan OpenVPN trial (${biru}trial${NC})"
echo -e "${merah}  3${putih}. Perbarui akun SSH dan OpenVPN (${biru}renew${NC})"
echo -e "${merah}  4${putih}. Hapus akun SSH dan OpenVPN (${biru}hapus${NC})"
echo -e "${merah}  5${putih}. Cek akun yang menggunakan SSH dan OpenVPN (${biru}cek${NC})"
echo -e "${merah}  6${putih}. Daftar akun SSH dan OpenVPN (${biru}member${NC})"
echo -e "${merah}  7${putih}. Hapus akun yang sudah expired (${biru}delete${NC})"
echo -e "${merah}  8${putih}. Pengaturan Autokill SSH (${biru}autokill${NC})"
echo -e "${merah}  9${putih}. Tampilkan akun yang menggunakan Multi Login SSH (${biru}ceklim${NC})"
echo -e "${merah} 10${putih}. Mulai ulang Dropbear, Squid3, SSH dan OpenVPN (${biru}restart${NC})"
echo -e "${putih}-----------------------------------------------------------------${NC}"
echo -e "${kuning} WIREGUARD${NC}"
echo -e "${merah} 11${putih}. Buat akun Wireguard (${biru}add-wg${NC})"
echo -e "${merah} 12${putih}. Hapus akun Wireguard (${biru}del-wg${NC})"
echo -e "${merah} 13${putih}. Cek akun yang menggunakan Wireguard (${biru}cek-wg${NC})"
echo -e "${merah} 14${putih}. Perbarui akun Wireguard (${biru}renew-wg${NC})"
echo -e "${merah} 15${putih}. Cek tampilan akun Wireguard (${biru}wg show${NC})"
echo -e "${putih}-----------------------------------------------------------------${NC}"
echo -e "${kuning} L2TP${NC}"
echo -e "${merah} 16${putih}. Buat akun L2TP (${biru}add-l2tp${NC})"
echo -e "${merah} 17${putih}. Hapus akun L2TP (${biru}del-l2tp${NC})"
echo -e "${merah} 18${putih}. Perbarui akun L2TP (${biru}renew-l2tp${NC})"
echo -e "${putih}-----------------------------------------------------------------${NC}"
echo -e "${kuning} PPTP${NC}"
echo -e "${merah} 19${putih}. Buat akun PPTP (${biru}add-pptp${NC})"
echo -e "${merah} 20${putih}. Hapus akun PPTP (${biru}del-pptp${NC})"
echo -e "${merah} 21${putih}. Perbarui akun PPTP (${biru}renew-pptp${NC})"
echo -e "${putih}-----------------------------------------------------------------${NC}"
echo -e "${kuning} SSTP${NC}"
echo -e "${merah} 22${putih}. Buat akun SSTP (${biru}add-sstp${NC})"
echo -e "${merah} 23${putih}. Hapus akun SSTP (${biru}del-sstp${NC})"
echo -e "${merah} 24${putih}. Perbarui akun SSTP (${biru}renew-sstp${NC})"
echo -e "${merah} 25${putih}. Cek akun yang menggunakan SSTP (${biru}cek-sstp${NC})"
echo -e "${putih}-----------------------------------------------------------------${NC}"
echo -e "${kuning} SHADOWSOCKS-R${NC}"
echo -e "${merah} 26${putih}. Buat akun Shadowsocks-R (${biru}add-ssr${NC})"
echo -e "${merah} 27${putih}. Hapus akun Shadowsocks-R (${biru}del-ssr${NC})"
echo -e "${merah} 28${putih}. Perbarui akun Shadowsocks-R (${biru}renew-ssr${NC})"
echo -e "${merah} 29${putih}. Tampilkan menu lain Shadowsocks-R (${biru}ssr${NC})"
echo -e "${putih}-----------------------------------------------------------------${NC}"
echo -e "${kuning} SHADOWSOCKS${NC}"
echo -e "${merah} 30${putih}. Buat akun Shadowsocks (${biru}add-ss${NC})"
echo -e "${merah} 31${putih}. Hapus akun Shadowsocks (${biru}del-ss${NC})"
echo -e "${merah} 32${putih}. Perbarui akun Shadowsocks (${biru}renew-ss${NC})"
echo -e "${merah} 33${putih}. Cek akun yang menggunakan Shadowsocks (${biru}cek-ss${NC})"
echo -e "${putih}-----------------------------------------------------------------${NC}"
echo -e "${kuning} VMESS${NC}"
echo -e "${merah} 34${putih}. Buat akun Vmess (${biru}add-ws${NC})"
echo -e "${merah} 35${putih}. Hapus akun Vmess (${biru}del-ws${NC})"
echo -e "${merah} 36${putih}. Perbarui akun Vmess (${biru}renew-ws${NC})"
echo -e "${merah} 37${putih}. Cek akun yang menggunakan Vmess (${biru}cek-ws${NC})"
echo -e "${merah} 38${putih}. Perbarui sertifikat Vmess (${biru}certv2ray${NC})"
echo -e "${putih}-----------------------------------------------------------------${NC}"
echo -e "${kuning} VLESS${NC}"
echo -e "${merah} 39${putih}. Buat akun Vless (${biru}add-vless${NC})"
echo -e "${merah} 40${putih}. Hapus akun Vless (${biru}del-vless${NC})"
echo -e "${merah} 41${putih}. Perbarui akun Vless (${biru}renew-vless${NC})"
echo -e "${merah} 42${putih}. Cek akun yang menggunakan Vless (${biru}cek-ws${NC})"
echo -e "${putih}-----------------------------------------------------------------${NC}"
echo -e "${kuning} TROJAN${NC}"
echo -e "${merah} 43${putih}. Buat akun Trojan (${biru}add-tr${NC})"
echo -e "${merah} 44${putih}. Hapus akun Trojan (${biru}del-tr${NC})"
echo -e "${merah} 45${putih}. Perbarui akun Trojan (${biru}renew-tr${NC})"
echo -e "${merah} 46${putih}. Cek akun yang menggunakan Trojan (${biru}cek-tr${NC})"
echo -e "${putih}---------------------------------------------------------------${NC}"
echo -e "${kuning} TROJAN-GO${NC}"
echo -e "${merah} 47${putih}. Buat akun Trojan-Go (${biru}add-tr-go${NC})"
echo -e "${merah} 48${putih}. Hapus akun Trojan-Go (${biru}del-tr-go${NC})"
echo -e "${merah} 49${putih}. Perbarui akun Trojan-Go (${biru}renew-tr-go${NC})"
echo -e "${merah} 50${putih}. Cek akun yang menggunakan Trojan-Go (${biru}cek-tr-go${NC})"
echo -e "${putih}---------------------------------------------------------------${NC}"
echo -e "${kuning} BACKUP DATA${NC}"
echo -e "${merah} 51${putih}. Autobackup data VPS (${biru}autobackup${NC})"
echo -e "${merah} 52${putih}. Custom backup data VPS (${biru}backup${NC})"
echo -e "${merah} 53${putih}. Pulihkan data VPS (${biru}restore${NC})"
echo -e "${putih}---------------------------------------------------------------${NC}"
echo -e "${kuning} PENGATURAN SISTEM${NC}"
echo -e "${merah} 54${putih}. Buat Willcard domain (${biru}add-host${NC})"
echo -e "${merah} 55${putih}. Tambahkan custom domain (${biru}add-host2${NC})"
echo -e "${merah} 56${putih}. Ganti port layanan VPS (${biru}change-port${NC})"
echo -e "${merah} 57${putih}. Tampilkan menu Webmin (${biru}wbmn${NC})"
echo -e "${merah} 58${putih}. Perbarui kernel sistem (${biru}kernel-updt${NC})"
echo -e "${merah} 59${putih}. Batasi kecepatan server (${biru}limit-speed${NC})"
echo -e "${merah} 60${putih}. Periksa pemakaian bandwith (${biru}vnstat${NC})"
echo -e "${merah} 61${putih}. Periksa penggunaan ram (${biru}ram${NC})"
echo -e "${merah} 62${putih}. Uji kecepatan server (${biru}speedtest${NC})"
echo -e "${merah} 63${putih}. Ganti kata-sandi root (${biru}pwroot${NC})"
echo -e "${merah} 64${putih}. Informasi Script (${biru}info${NC})"
echo -e "${merah} 65${putih}. Informasi System (${biru}info2${NC})"
echo -e "${merah} 66${putih}. Perbarui AutoScript (${biru}lsvr${NC})"
echo -e "${putih}---------------------------------------------------------------${NC}"
echo -e "${merah} 99${putih}. Mulai ulang VPS (${biru}reboot${NC})"
echo -e "${merah}  0${putih}. Keluar dari Menu (${biru}CTRL+C${NC})"
echo -e "${putih}===============================================================${NC}"
read -rp " Masukan nomor pilihan: " -e num
if [[ "$num" = "1" ]]; then
usernew
elif [[ "$num" = "2" ]]; then
trial
elif [[ "$num" = "3" ]]; then
renew
elif [[ "$num" = "4" ]]; then
hapus
elif [[ "$num" = "5" ]]; then
cek
elif [[ "$num" = "6" ]]; then
member
elif [[ "$num" = "7" ]]; then
delete
elif [[ "$num" = "8" ]]; then
autokill
elif [[ "$num" = "9" ]]; then
ceklim
elif [[ "$num" = "10" ]]; then
restart
elif [[ "$num" = "11" ]]; then
add-wg
elif [[ "$num" = "12" ]]; then
del-wg
elif [[ "$num" = "13" ]]; then
cek-wg
elif [[ "$num" = "14" ]]; then
renew-wg
elif [[ "$num" = "15" ]]; then
wg show
elif [[ "$num" = "16" ]]; then
add-l2tp
elif [[ "$num" = "17" ]]; then
del-l2tp
elif [[ "$num" = "18" ]]; then
renew-l2tp
elif [[ "$num" = "19" ]]; then
add-pptp
elif [[ "$num" = "20" ]]; then
del-pptp
elif [[ "$num" = "21" ]]; then
renew-pptp
elif [[ "$num" = "22" ]]; then
add-sstp
elif [[ "$num" = "23" ]]; then
del-sstp
elif [[ "$num" = "24" ]]; then
renew-sstp
elif [[ "$num" = "25" ]]; then
cek-sstp
elif [[ "$num" = "26" ]]; then
add-ssr
elif [[ "$num" = "27" ]]; then
del-ssr
elif [[ "$num" = "28" ]]; then
renew-ssr
elif [[ "$num" = "29" ]]; then
ssr
elif [[ "$num" = "30" ]]; then
add-ss
elif [[ "$num" = "31" ]]; then
del-ss
elif [[ "$num" = "32" ]]; then
renew-ss
elif [[ "$num" = "33" ]]; then
cek-ss
elif [[ "$num" = "34" ]]; then
add-ws
elif [[ "$num" = "35" ]]; then
del-ws
elif [[ "$num" = "36" ]]; then
renew-ws
elif [[ "$num" = "37" ]]; then
cek-ws
elif [[ "$num" = "38" ]]; then
certv2ray
elif [[ "$num" = "39" ]]; then
add-vless
elif [[ "$num" = "40" ]]; then
del-vless
elif [[ "$num" = "41" ]]; then
renew-vless
elif [[ "$num" = "42" ]]; then
cek-ws
elif [[ "$num" = "43" ]]; then
add-tr
elif [[ "$num" = "44" ]]; then
del-tr
elif [[ "$num" = "45" ]]; then
renew-tr
elif [[ "$num" = "46" ]]; then
cek-tr
elif [[ "$num" = "47" ]]; then
add-tr-go
elif [[ "$num" = "48" ]]; then
del-tr-go
elif [[ "$num" = "49" ]]; then
renew-tr-go
elif [[ "$num" = "50" ]]; then
cek-tr-go
elif [[ "$num" = "51" ]]; then
autobackup
elif [[ "$num" = "52" ]]; then
backup
elif [[ "$num" = "53" ]]; then
restore
elif [[ "$num" = "54" ]]; then
add-host
elif [[ "$num" = "55" ]]; then
add-host2
elif [[ "$num" = "56" ]]; then
change-port
elif [[ "$num" = "57" ]]; then
wbmn
elif [[ "$num" = "58" ]]; then
kernel-updt
elif [[ "$num" = "59" ]]; then
limit-speed
elif [[ "$num" = "60" ]]; then
clear
vnstat
vnstat -d
elif [[ "$num" = "61" ]]; then
clear
ram
elif [[ "$num" = "62" ]]; then
clear
speedtest
elif [[ "$num" = "63" ]]; then
pwroot
elif [[ "$num" = "64" ]]; then
info
elif [[ "$num" = "65" ]]; then
info2
elif [[ "$num" = "66" ]]; then
lsvr
elif [[ "$num" = "99" ]]; then
reboot
elif [[ "$num" = "0" ]]; then
clear
sleep 1
screenfetch -n
gjskytr4gs
exit 0
else
clear
menu
fi