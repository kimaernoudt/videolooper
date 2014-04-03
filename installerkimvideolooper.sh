#!/bin/bash

# kim videolooper installer

# Make sure only root can run this script
if [ "$(id -u)" != "0" ]; then
    echo "This script must be run as root" 1>&2
    exit 1
fi

cp -a startvideos.sh /home/pi/
cp -a startfullscreen.sh /home/pi/
cp -a videoloop /etc/init.d/
cp -a 10-usbdriveadded.rules /etc/udev/rules.d/
cp -a 10-usbdriveremoved.rules /etc/udev/rules.d/
cp -a startstartloop.sh /home/pi/
cp -a stoploop.sh /home/pi

echo '/mnt/media/usbdrive/ vfat rw,defaults 0 0' >> /etc/fstab




update-rc.d videoloop defaults




