#!/bin/sh -eux

apt-get remove -y --purge libreoffice* thunderbird* rhythmbox* aisleriot gnome-sudoku gnome-mahjongg mahjongg ace-of-penguins gnomine gbrainy gnome-mines byobu xiterm+thai cheese remmina gnome-todo totem totem-plugins
apt-get clean
apt-get autoremove -y
mkdir -p /home/vagrant/.local/share/applications/
echo 'Hidden=true' | cat /usr/share/applications/ubuntu-amazon-default.desktop - > /home/vagrant/.local/share/applications/ubuntu-amazon-default.desktop
rm -fr /var/lib/apt/lists/* \
    /tmp/* \
    /var/tmp/* \
    /var/cache/apt/archives/lock \
    /var/lib/dpkg/lock* \
    /home/vagrant/Downloads/*