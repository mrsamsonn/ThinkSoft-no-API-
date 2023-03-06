#!/bin/sh
echo "Thinksoft script started...\n\n"
mount -uw /Volumes/THINKSOFT
chroot /Volumes/THINKSOFT/ ./think_soft_main.sh
exit
