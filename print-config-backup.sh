#/usr/bin/env zsh
dest="/mnt/3d/backups/configs"
cp /home/pi/printer.cfg $dest/$(date +%d-%b-%Y)-printer.cfg
cp /boot/octopi.txt $dest/$(date +%d-%b-%Y)-octopi.txt
cp /home/pi/printer.cfg $dest/$(date +%d-%b-%Y)-boot.txt
