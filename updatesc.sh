#!/bin/bash
# ==========================================
rm -rf update.sh
# hapus dan download di /usr/bin 
cd /usr/bin
rm -rf updatesc
rm -rf menu

# Download file updatesc
wget -O menu "https://raw.githubusercontent.com/ayahost/updatesc/main/menu-update-grpc.sh"
wget -O updatesc "https://raw.githubusercontent.com/ayahost/updatesc/main/updatesc.sh"

#izinkan file updatesc 
chmod +x menu
chmod +x updatesc

# kembali ke root
cd

# hapus file update.sh di root / jika masih ada sisa


# Download update.sh ke root
wget -O update.sh "https://raw.githubusercontent.com/ayahost/updatesc/main/update.sh"
chmod +x update.sh
sed -i -e 's/\r$//' update.sh && screen -S update ./update.sh

sleep 5
echo "Update Script VPN Premum telah selesai"
sleep 5
rm -rf update.sh
clear
menu
