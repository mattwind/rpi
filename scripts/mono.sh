#!/bin/bash

REPO="https://download.mono-project.com/repo"
OS="debian"
SNAPSHOT="raspbianstretch/snapshots/5.14.0.177"
KEY="3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF"
VERSION="5.14.0.177-0xamarin3+raspbian9b1"

sudo apt install apt-transport-https dirmngr
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys $KEY
echo "deb $REPO/$OS $SNAPSHOT main" | sudo tee /etc/apt/sources.list.d/mono-official-stable.list
sudo apt update
sudo apt-get install mono-complete=$VERSION

