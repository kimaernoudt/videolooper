videolooper
===========

raspberry pi videolooper script (this can loop multiple extensions and multiple files) audio is standard hdmi.


1. clone git https://github.com/StevenHickson/RPiVideoLooper

2. install

3. change in startvideos.sh :
   /mnt/media/usbdrive

4. use the udev rules for executing commands on removing and inserting the usbdrive
   in /etc/udev/rules.d/10-usbdriveadded.rules    :KERNEL=="sd?1", ACTION=="add", RUN+="/home/pi/videoloop.sh"
   in /etc/udev/rules.d/10-usbdriveremoved.rules  :KERNEL=="sd?1", ACTION=="remove", RUN+="/home/pi/startstoploop.sh"

5. edit fstab with the following to automount usbdrive /dev/sda1 to /mnt/media/usbdrive 
   /dev/sda1 /mnt/media/usbdrive/ vfat rw,defaults 0 0


kim
