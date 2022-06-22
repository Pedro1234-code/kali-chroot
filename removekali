#!/bin/bash

touch demo.txt
if zenity --question --title="Remove Kali Linux" --text="Are you sure you want to remove Kali Linux chroot?" --no-wrap
    then
    sudo stopkali && sudo rm -rf /usr/bin/stopkali && sudo rm -rf /usr/bin/startkali && sudo rm -rf /kali-fs
    zenity --info --title="Success" --text="Kali sucefully removed" --no-wrap
fi
