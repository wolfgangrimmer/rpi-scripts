#!/bin/bash
sudo apt-get install ntfs-3g
sudo apt-get install vim
sudo apt-get install openvpn
sudo apt-get install samba
sudo apt-get install git
sudo apt-get install deluge deluged deluge-console
git clone https://github.com/wolfgangrimmer/rpi-scripts.git
sudo cp /home/pi/rpi-scripts/rc.local /etc/rc.local
sudo mkdir /mnt/E
sudo cp /home/pi/rpi-scripts/fstab /etc/fstab
sudo cp /home/pi/rpi-scripts/smb.conf /etc/samba/smb.conf
sudo cp /home/pi/rpi-scripts/deluged.service /etc/systemd/system/deluged.service
chmod +x /home/pi/rpi-scripts/runmullvad.sh
#sudo chmod -R 777 /mnt/E
sudo systemctl start deluged
sudo systemctl enable deluged
sudo reboot