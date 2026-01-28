#!/bin/bash
set -e

export DEBIAN_FRONTEND=noninteractive

echo "== AmiRock / Rock-5B Base Setup =="

#--------------------------------------------------
# System Update
#--------------------------------------------------
sudo apt update
sudo apt upgrade -y

#--------------------------------------------------
# Basistools
#--------------------------------------------------
sudo apt install -y \
  git wget curl unzip zip mc dialog \
  build-essential pkg-config \
  ca-certificates software-properties-common

#--------------------------------------------------
# Desktop (XFCE minimal, kein GNOME)
#--------------------------------------------------
sudo apt purge -y gnome* nautilus* gnome-terminal* || true

sudo apt install -y \
  xserver-xorg \
  xfce4 xfce4-goodies \
  xfce4-terminal \
  lightdm \
  feh lxinput

#--------------------------------------------------
# Amiga / Retro Essentials
#--------------------------------------------------
sudo apt install -y \
  unadf \
  lha \
  fonts-dejavu \
  fonts-freefont-ttf \
  joystick \
  jstest-gtk

#--------------------------------------------------
# Amiga Fonts
#--------------------------------------------------
if [ ! -d "$HOME/amigafonts" ]; then
  git clone --depth=1 https://github.com/rewtnull/amigafonts "$HOME/amigafonts"
  sudo cp -r "$HOME/amigafonts/ttf/"* /usr/share/fonts/truetype/
  sudo fc-cache -f
fi

#--------------------------------------------------
# Verzeichnisse
#--------------------------------------------------
sudo mkdir -p /opt/Amiga/{conf,roms,disks,data}
sudo chown -R $USER:$USER /opt/Amiga

mkdir -p "$HOME/Amiberry"

#--------------------------------------------------
# Fan Control (Rock-5B spezifisch)
#--------------------------------------------------
if [ ! -d "$HOME/fan-control-rock5b" ]; then
  git clone https://github.com/pymumu/fan-control-rock5b
  cd fan-control-rock5b
  make package
  sudo dpkg -i fan-control*.deb
  sudo systemctl enable fan-control
  sudo systemctl start fan-control
fi

#--------------------------------------------------
# Cleanup
#--------------------------------------------------
sudo apt autoremove -y
sudo apt clean

~/AmiRock/scripts/AmiKickme.sh
