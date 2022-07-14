#!/bin/sh

## example
# sudo sh ./install.sh 16U5EMS1

if [[ "$EUID" != 0 ]]; then
  echo "The script need to be run as root."
  exit 1
fi

if [ -z "$1" ]; then
  echo "Please choose your laptop."
  echo "sudo sh ./install.sh 16U5EMS1"
  exit 1
fi

cp etc/isw.conf /etc/isw.conf
chmod 644 /etc/isw.conf
cp etc/modprobe.d/isw-ec_sys.conf /etc/modprobe.d/isw-ec_sys.conf
chmod 644 /etc/modprobe.d/isw-ec_sys.conf
cp etc/modules-load.d/isw-ec_sys.conf /etc/modules-load.d/isw-ec_sys.conf
chmod 644 /etc/modules-load.d/isw-ec_sys.conf
cp etc/modules-load.d/isw-ec_sys.conf /etc/modules-load.d/isw-ec_sys.conf 
chmod 644 /etc/modules-load.d/isw-ec_sys.conf 
cp usr/lib/systemd/system/isw@.service /usr/lib/systemd/system/isw@.service
chmod 644 /usr/lib/systemd/system/isw@.service
cp isw /usr/bin/isw
chmod 755 /usr/bin/isw
mkdir /etc/isw
cp etc/isw/execprestart.sh /etc/isw/execprestart.sh
chmod 755 /etc/isw/execprestart.sh

#Create systemctl for you MSI Motherboard
systemctl enable isw@$1.service

echo "Reboot for isw to start"
