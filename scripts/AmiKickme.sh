#!/bin/bash
# ************************************************************
# AmiRock-OS Install Script
# Author: Bernd Titze
# Optimized & restructured (features preserved)
# ************************************************************

set -u

# ------------------------------------------------------------
# Globals
# ------------------------------------------------------------
USER_NAME="${USER}"
HOME_DIR="/home/${USER_NAME}"

BLACK='\033[0;39m'
BLUE='\033[1;34m'
GREEN='\033[1;32m'
RED='\033[1;31m'
GREY='\033[1;30m'

# ------------------------------------------------------------
# Helper Functions
# ------------------------------------------------------------
banner() {
    clear
    toilet "$1" --metal
    echo
}

ensure_dir() {
    [ ! -d "$1" ] && sudo mkdir -p "$1"
}

install_packages() {
    sudo apt install -y "$@"
}

# ------------------------------------------------------------
# Initial Cleanup
# ------------------------------------------------------------
sudo rm -rf "${HOME_DIR}/.cache/"*
clear

# ------------------------------------------------------------
# Package Installation
# ------------------------------------------------------------
install_packages \
    gnome-com* \
    xserver-xorg xfce4 xfce4-goodies lxinput xinit* \
    xfce4-te* \
    chromium-b* \
    firefox-esr \
    worker xdms unadf fonts-amiga \
    mc zip unzip gparted \
    mednaffe \
    git usbmount \
    geany geany-plugins-common geany-common xmlstarlet

# ------------------------------------------------------------
# User Config Restore
# ------------------------------------------------------------
cp -rf /opt/AmiRock/scripts/.bashrc "${HOME_DIR}/"
cd "${HOME_DIR}"

unzip -u "${HOME_DIR}/AmiRock/config/data.pac"
cp -rf "${HOME_DIR}/data/.config" "${HOME_DIR}/"
cp -rf "${HOME_DIR}/data/.local"  "${HOME_DIR}/"
cp -rf "${HOME_DIR}/data/.worker" "${HOME_DIR}/"
sudo rm -rf "${HOME_DIR}/data"

# ------------------------------------------------------------
# Amiga Base Install
# ------------------------------------------------------------
if [ ! -d /opt/Amiga/data ]; then
    sudo chmod -R 777 "${HOME_DIR}"

    cd /opt
    sudo rm -rf /opt/Amiga
    sudo unzip -o /opt/AmiRock/Amiga/Amiga.zip

    banner "AmiRock-OS"
    echo "Fix Amiga Folder"

    sudo cp -rf /opt/Amiga/data/AmigaTopaz.ttf /usr/share/fonts/truetype/amiga/
    sudo cp -rf /opt/Amiga/data/*.png /usr/share/applications/

    sudo ln -sf /opt/vc/lib/libbcm_host.so /usr/lib/aarch64-linux-gnu/libbcm_host.so.0
fi

sudo chmod -R 777 /opt

# ------------------------------------------------------------
# Backup Structure
# ------------------------------------------------------------
ensure_dir /opt/Backup
sudo chmod -R 777 /opt/Backup

# ------------------------------------------------------------
# System Integration
# ------------------------------------------------------------
sudo cp -R "${HOME_DIR}/AmiRock/scripts/"* /usr/local/bin
sudo cp -R "${HOME_DIR}/AmiRock/config/Desktop/"* /usr/share/applications/
sudo cp -rf /opt/AmiRock/config/Logo/* /opt/AmiRock/config/

sudo cp -rf \
 /opt/AmiRock/config/Logo/boot.jpg \
 /usr/share/backgrounds/armbian-lightdm/armbian03-Dre0x-Minum-dark-blurred-3840x2160.jpg

# ------------------------------------------------------------
# System Update
# ------------------------------------------------------------
banner "AmiRock-OS"
echo -e "${BLUE}AmiRock-OS ROM Operating System and Libraries"
echo -e "${GREY}Version V2.0 2020-2021"
sudo apt-get update
sudo apt-get upgrade -y

# ------------------------------------------------------------
# MegaAGS Integration
# ------------------------------------------------------------
if [ -d /opt/Backup/MegaAGS/games/Amiga ]; then
    sudo cp -rf /opt/AmiRock/Amiga/MegaAGS/MegaAGS.desktop /usr/share/applications/
    sudo cp -rf /opt/AmiRock/Amiga/MegaAGS/MegaAGS.uae /opt/Amiga/Amiga/conf/
fi

# ------------------------------------------------------------
# Kickstart Check
# ------------------------------------------------------------
if [ ! -f /opt/Amiga/kickstarts/A1200.rom ]; then
    banner "AmiRock-OS"
    echo -e "${RED}Kickroms & Workbench are copyrighted!"
    echo -e "${BLUE}Use only if you own original Amiga hardware."

    ensure_dir /opt/Amiga/dir/Work
    ensure_dir /opt_
