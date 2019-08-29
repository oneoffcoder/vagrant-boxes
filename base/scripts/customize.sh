#!/bin/sh -eux

apt-get remove -y --purge libreoffice* thunderbird* rhythmbox* aisleriot gnome-sudoku gnome-mahjongg mahjongg ace-of-penguins gnomine gbrainy gnome-mines xiterm+thai cheese remmina gnome-todo totem totem-plugins
wget -q https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb -O /tmp/google-chrome-stable_current_amd64.deb
dpkg -i /tmp/google-chrome-stable_current_amd64.deb
rm -f /tmp/google-chrome-stable_current_amd64.deb