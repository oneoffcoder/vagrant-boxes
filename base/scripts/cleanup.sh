#!/bin/sh -eux

apt-get remove -y --purge libreoffice* thunderbird* rhythmbox* aisleriot gnome-sudoku gnome-mahjongg mahjongg ace-of-penguins gnomine gbrainy gnome-mines byobu xiterm+thai cheese remmina gnome-todo totem totem-plugins
apt-get clean
apt-get autoremove
echo 'Hidden=true' | cat /usr/share/applications/ubuntu-amazon-default.desktop - > ~/.local/share/applications/ubuntu-amazon-default.desktop