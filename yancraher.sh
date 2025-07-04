#!/bin/bash

# Warna
kuning='\033[1;33m'
hijau='\033[1;32m'
hitam='\033[1;30m'
biru='\033[1;34m'
reset='\033[0m'

# Data Login
user="yanofficialid"
pass="yantest"

# Tampilan Awal
clear
echo -e "${biru}"
echo "██╗   ██╗ █████╗ ███╗   ██╗ ██████╗██████╗  █████╗ ███████╗███████╗██████╗ "
echo "██║   ██║██╔══██╗████╗  ██║██╔════╝██╔══██╗██╔══██╗██╔════╝██╔════╝██╔══██╗"
echo "██║   ██║███████║██╔██╗ ██║██║     ██████╔╝███████║███████╗█████╗  ██████╔╝"
echo "██║   ██║██╔══██║██║╚██╗██║██║     ██╔═══╝ ██╔══██║╚════██║██╔══╝  ██╔══██╗"
echo "╚██████╔╝██║  ██║██║ ╚████║╚██████╗██║     ██║  ██║███████║███████╗██║  ██║"
echo " ╚═════╝ ╚═╝  ╚═╝╚═╝  ╚═══╝ ╚═════╝╚═╝     ╚═╝  ╚═╝╚══════╝╚══════╝╚═╝  ╚═╝"
echo -e "${reset}"
echo -e "${kuning}YANCRASHER BY YANOFFICIALID${reset}"
echo -e "${hijau}Ini Hanya Testing, Yang Beneran Akan Datang...${reset}"
echo -e "${hitam}© YanOfficialID${reset}"
echo ""

# Login
read -p "Username: " input_user
read -p "Password: " input_pass

if [[ $input_user == $user && $input_pass == $pass ]]; then
    echo -e "${hijau}Login Berhasil! Selamat Datang $input_user${reset}"
    sleep 1
else
    echo -e "${kuning}Login Gagal! Keluar...${reset}"
    exit
fi

# Menu
while true; do
echo ""
echo -e "${kuning}PILIH FITUR:${reset}"
echo -e "${biru}1.${reset} yancrasher 62xxxxxx"
echo -e "${biru}2.${reset} yandelay 62xxxxxx"
echo -e "${biru}3.${reset} yanforclose 62xxxxxx"
echo -e "${biru}4.${reset} yancreateobf (file zip)"
echo -e "${biru}5.${reset} TQTO"
echo -e "${biru}0.${reset} Exit"
read -p "PILIH NOMOR: " pil

case $pil in
1)
  read -p "Masukkan Nomor Target (62xxxx): " no
  echo -e "${kuning}Mengirim YanCrasher ke $no...${reset}"
  sleep 2
  echo -e "${hijau}YanCrasher Terkirim Sukses!${reset}"
;;
2)
  read -p "Masukkan Nomor Target (62xxxx): " no
  echo -e "${kuning}Mengirim YanDelay ke $no...${reset}"
  sleep 2
  echo -e "${hijau}YanDelay Terkirim Sukses!${reset}"
;;
3)
  read -p "Masukkan Nomor Target (62xxxx): " no
  echo -e "${kuning}Mengirim YanForclose ke $no...${reset}"
  sleep 2
  echo -e "${hijau}YanForclose Terkirim Sukses!${reset}"
;;
4)
  read -p "Masukkan Nama Output (tanpa .zip): " nama
  mkdir -p $nama
  echo "echo 'Obfuscator Dummy by YanOfficialID'" > $nama/README.txt
  zip -r "$nama.zip" $nama > /dev/null 2>&1
  rm -rf $nama
  echo -e "${hijau}File $nama.zip berhasil dibuat.${reset}"
;;
5)
  echo ""
  echo -e "${kuning}===== TQTO =====${reset}"
  echo -e "${biru}YanOfficialID${reset} (Developer Tools)"
  echo -e "${biru}All Pengguna Tools YanCrasher${reset}"
;;
0)
  echo -e "${kuning}Keluar...${reset}"
  exit
;;
*)
  echo -e "${hijau}Pilih yang bener woi...${reset}"
;;
esac
done
