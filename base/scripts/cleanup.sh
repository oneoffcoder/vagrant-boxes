#!/bin/sh -eux

apt-get remove -y --purge libreoffice* thunderbird* rhythmbox* xiterm+thai
mkdir -p /home/vagrant/.local/share/applications/
echo 'Hidden=true' | cat /usr/share/applications/ubuntu-amazon-default.desktop - > /home/vagrant/.local/share/applications/ubuntu-amazon-default.desktop

wget -q https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb -O /tmp/google-chrome-stable_current_amd64.deb
dpkg -i /tmp/google-chrome-stable_current_amd64.deb
rm -f /tmp/google-chrome-stable_current_amd64.deb