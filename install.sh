#/bin/bash

sudo apt update

sudo apk update

sudo apt install wget -y

sudo apk add wget

sudo dnf install wget

mkdir /kali-fs

cd /kali-fs

arch=$(dpkg --print-architecture)

sudo wget https://build.nethunter.com/kalifs/kalifs-latest/kalifs-$arch-full.tar.xz   

sudo tar -xf kalifs-$arch-full.tar.xz  

sudo rm -rf kalifs-$arch-full.tar.xz

sudo chroot . /bin/bash apt update && apt install sudo -y && sudo apt upgrade -y

sudo chroot . /bin/bash sudo apt install gnupg  -y

echo Creating launch script

sudo mkdir /kali-fs/dev

sudo mkdir /kali-fs/sys

sudo mkdir /kali-fs/proc

cd /usr/bin

sudo wget https://raw.githubusercontent.com/Pedro1234-code/kali-chroot/main/startkali

sudo chmod +x startkali

sudo wget https://raw.githubusercontent.com/Pedro1234-code/kali-chroot/main/stopkali

sudo chmod +x stopkali

sudo wget https://raw.githubusercontent.com/Pedro1234-code/kali-chroot/main/removekali

sudo chmod +x removekali

zenity --notification --text "Installed a new system using chroot, please restart your computer and don't delete the root folder without stoping it at least"
