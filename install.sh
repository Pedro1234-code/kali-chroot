#/bin/bash

sudo apt update

sudo apk update

sudo apt install wget -y

sudo apk add wget

sudo dnf install

mkdir /kali-fs

cd /kali-fs

arch=$(dpkg --print-architecture)

sudo wget https://build.nethunter.com/kalifs/kalifs-latest/kalifs-$arch-full.tar.xz   

sudo tar -xf kalifs-$arch-full.tar.xz  

sudo rm -rf kalifs-$arch-full.tar.xz

sudo chroot . /bin/bash apt update && apt install sudo -y && sudo apt upgrade -y

sudo chroot . /bin/bash sudo apt install gnupg  -y

echo Creating launch script

sudo touch /usr/bin/startkali

echo sudo mount -t proc /proc /kali-fs/proc > /usr/bin/startkali

echo sudo mount -o bind /sys /kali-fs/sys
