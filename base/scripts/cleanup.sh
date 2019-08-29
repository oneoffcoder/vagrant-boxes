#!/bin/sh -eux

apt-get remove -y --purge libreoffice* thunderbird* rhythmbox* xiterm+thai
mkdir -p /home/vagrant/.local/share/applications/
echo 'Hidden=true' | cat /usr/share/applications/ubuntu-amazon-default.desktop - > /home/vagrant/.local/share/applications/ubuntu-amazon-default.desktop