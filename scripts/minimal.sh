#!/bin/bash

sudo apt-get update
sudo apt-get install -y xorg fluxbox slim thunar network-manager-gnome
sudo sed -i 's/#auto_login          no/auto_login          yes/' /etc/slim.conf
sudo sed -i 's/#default_user        simone/default_user        pi/' /etc/slim.conf
sudo systemctl start slim
