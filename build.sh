#!/usr/bin/env bash

echo "May need 25 minutes to build"
date > a.txt
make menuconfig
make bzImage
make modules
date > b.txt

sudo make modules_install
sudo mkinitramfs -o /boot/initrd.img-2.6.32 2.6.32
sudo make install

