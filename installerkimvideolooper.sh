#!/bin/bash

# kim videolooper installer

# Make sure only root can run this script
if [ "$(id -u)" != "0" ]; then
    echo "This script must be run as root" 1>&2
    exit 1
fi

# copy the needed files
echo "copying the files"
cp -a startvideos.sh /home/pi/
cp -a startfullscreen.sh /home/pi/
cp -a videoloop /etc/init.d/
cp -a 10-usbdriveadded.rules /etc/udev/rules.d/
cp -a 10-usbdriveremoved.rules /etc/udev/rules.d/
cp -a startstartloop.sh /home/pi/
cp -a startstoploop.sh /home/pi
cp -a stoploop.sh /home/pi
echo "copy succes"

echo "editing fstab to automount usbdrive on /mnt/media/usbdrive"
# edit fstab
echo '/mnt/media/usbdrive/ vfat rw,defaults 0 0' >> /etc/fstab
echo "editing fstab succes"

#update rc.d with the new daemon
echo "updating rc.d"
update-rc.d videoloop defaults
echo "updating rc.d succes"

echo "this raspberry is now an automatic videolooper, it plays from the usbstick, default audio is trough hdmi"



