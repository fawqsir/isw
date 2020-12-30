#!/bin/sh

cp etc/isw.conf /etc/isw.conf
chmod 644 /etc/isw.conf
cp etc/modprobe.d/isw-ec_sys.conf /etc/modprobe.d/isw-ec_sys.conf
chmod 644 /etc/modprobe.d/isw-ec_sys.conf
cp modules-load.d/isw-ec_sys.conf /modules-load.d/isw-ec_sys.conf
chmod 644 /modules-load.d/isw-ec_sys.conf
cp etc/modules-load.d/isw-ec_sys.conf /etc/modules-load.d/isw-ec_sys.conf 
chmod 644 /etc/modules-load.d/isw-ec_sys.conf 
cp usr/lib/systemd/system/isw@.service /usr/lib/systemd/system/isw@.service
chmod 644 /usr/lib/systemd/system/isw@.service
cp isw /usr/bin/isw
chmod 755 /usr/bin/isw
