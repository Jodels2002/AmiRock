#!/bin/bash
set -e

export DEBIAN_FRONTEND=noninteractive
USER_HOME="/home/$USER"

echo "== AmiKickme (Rock-5B / Armbian) =="

#--------------------------------------------------
# Sanity Checks
#--------------------------------------------------
if [ "$EUID" -eq 0 ]; then
  echo "Please run as normal user, not root"
  exit 1
fi

if [ ! -d /usr/lib/armbian ]; then
  echo "Not an Armbian system – aborting"
  exit 1
fi

#--------------------------------------------------
# Required Packages
#--------------------------------------------------
sudo apt install -y \
  xfce4-terminal \
  worker \
  unadf lha \
  fonts-amiga \
  gparted \
  mednaffe \
  geany geany-plugins-common \
  xmlstarlet \
  mc zip unzip

#--------------------------------------------------
# Amiga Directory Structure
#--------------------------------------------------
sudo mkdir -p /opt/Amiga/{conf,data,roms,disks,kickstarts,Install}
sudo chown -R $USER:$USER /opt/Amiga

#--------------------------------------------------
# Unpack Amiga Base (once)
#--------------------------------------------------
if [ ! -f /opt/Amiga/data/amiberry.png ]; then
  sudo unzip -o /opt/AmiRock/Amiga/Amiga.zip -d /opt/
fi

#--------------------------------------------------
# Fonts
#--------------------------------------------------
if [ -f /opt/Amiga/data/AmigaTopaz.ttf ]; then
  sudo install -m 644 /opt/Amiga/data/AmigaTopaz.ttf \
    /usr/share/fonts/truetype/amiga/AmigaTopaz.ttf
  sudo fc-cache -f
fi

#--------------------------------------------------
# Desktop Entries
#--------------------------------------------------
if [ -d /opt/AmiRock/config/Desktop ]; then
  sudo cp -f /opt/AmiRock/config/Desktop/*.desktop \
    /usr/share/applications/
fi

#--------------------------------------------------
# Bashrc (safe replace)
#--------------------------------------------------
if [ -f /opt/AmiRock/scripts/.bashrc ]; then
  cp /opt/AmiRock/scripts/.bashrc "$USER_HOME/.bashrc"
fi

#--------------------------------------------------
# RetroPie Integration (optional)
#--------------------------------------------------
if [ -d /opt/retropie/configs/all/retroarch ]; then
  rm -rf "$USER_HOME/.config/retroarch"
  ln -s /opt/retropie/configs/all/retroarch \
    "$USER_HOME/.config/retroarch"
fi

#--------------------------------------------------
# Cleanup (SAFE)
#--------------------------------------------------
find /opt -name "._*" -delete || true
find /opt -name ".DS_Store" -delete || true

sudo rm -f /opt/Amiga/conf/amiberry*.conf

#--------------------------------------------------
# Permissions (sane!)
#--------------------------------------------------
sudo chmod -R 755 /opt/Amiga
sudo chmod -R 755 /usr/local/bin
sudo chown -R $USER:$USER "$USER_HOME"

#--------------------------------------------------
# Done
#--------------------------------------------------
echo ""
echo "AmiKickme finished successfully."
echo "No reboot required."
echo "Ready for Amiberry & RetroPie."
