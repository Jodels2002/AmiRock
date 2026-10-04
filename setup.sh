#!/bin/bash
# AmiRock Installer – Optimized Radxa 5C Edition
# B. Titze 



#---------------------------------------
# Colors
#---------------------------------------
BLUE='\033[1;34m'
GREEN='\033[1;32m'
RED='\033[1;31m'
NC='\033[0m'

log() { echo -e "${BLUE}[INFO]${NC} $1"; }
err() { echo -e "${RED}[ERROR]${NC} $1"; exit 1; }

#---------------------------------------
# Basic System Prep
#---------------------------------------
log "Updating system..."
sudo apt update -y
sudo apt upgrade -y

sudo apt install -y software-properties-common git unzip dialog mc zip wget toilet

#---------------------------------------
# Copy AmiRock files
#---------------------------------------
if [[ -d "$HOME/AmiRock" ]]; then
    log "Installing AmiRock files..."
    sudo cp -R "$HOME/AmiRock/scripts/"* /usr/local/bin/
    sudo cp -R "$HOME/AmiRock" /opt/
    sudo chmod -R 755 /usr/local/bin/
    sudo chmod -R 755 /opt/AmiRock/
else
    err "AmiRock source directory not found!"
fi

clear
toilet "AmiRock" --metal
echo "Welcome to the AmiRock Installer"

#---------------------------------------
# Create user pi (safe & idempotent)
#---------------------------------------
if ! id pi &>/dev/null; then
    log "Creating user pi..."
    sudo useradd -m pi
    sudo usermod -aG audio,video pi
    echo "pi ALL=(ALL) NOPASSWD: ALL" | sudo tee -a /etc/sudoers >/dev/null
fi

#---------------------------------------
# Autologin for pi
#---------------------------------------
log "Configuring autologin..."
sudo systemctl disable getty@tty1.service || true

sudo tee /etc/systemd/system/autologin@.service >/dev/null <<EOF
[Unit]
Description=Autologin to console as %I
After=getty.target

[Service]
ExecStart=-/sbin/agetty --autologin pi --noclear %I 38400 linux

[Install]
WantedBy=multi-user.target
EOF

sudo systemctl daemon-reload
sudo systemctl enable autologin@tty1.service

#---------------------------------------
# Fan Control (Radxa Rock5B/5C)
#---------------------------------------
log "Installing Radxa fan control..."
if [[ ! -d /opt/fan-control ]]; then
    git clone https://github.com/pymumu/fan-control-rock5b /tmp/fanctl
    cd /tmp/fanctl
    make package
    sudo dpkg -i fan-control*.deb
    sudo systemctl enable fan-control
    sudo systemctl start fan-control
fi

#---------------------------------------
# Desktop & Tools
#---------------------------------------
log "Installing desktop environment..."
sudo apt purge -y raspberrypi-ui-mods gnome* terminator || true

sudo apt install -y \
    xfce4 xfce4-goodies \
    xserver-xorg \
    firefox-esr chromium-browser \
    gparted ntfs-3g feh nemo \
    geany geany-plugins-common \
    worker grafx2 fonts-amiga

#---------------------------------------
# Amiga directory structure
#---------------------------------------
log "Preparing Amiga directory..."
if [[ ! -d /opt/Amiga ]]; then
    sudo mkdir /opt/Amiga
    sudo ln -s /opt/Amiga "$HOME/Amiga"
    unzip -u /opt/AmiRock/Amiga/Amiga.zip -d /opt/Amiga/
fi

#---------------------------------------
# Install Amiga fonts
#---------------------------------------
log "Installing Amiga fonts..."
git clone --depth=1 https://github.com/rewtnull/amigafonts /tmp/amifonts
sudo cp -R /tmp/amifonts/ttf/* /usr/share/fonts/truetype/
rm -rf /tmp/amifonts

#---------------------------------------
# Themes & Icons
#---------------------------------------
log "Installing Amiga themes..."
sudo cp -R "$HOME/AmiRock/config/AMIGAOSLINUX.zip" /usr/share/icons/
sudo unzip -u /usr/share/icons/AMIGAOSLINUX.zip -d /usr/share/icons/

sudo rm -rf /usr/share/icons/default
sudo cp -R /usr/share/icons/AMIGAOSLINUX /usr/share/icons/default

git clone --depth=1 https://github.com/x64k/amitk /tmp/amitk
sudo cp -R /tmp/amitk /usr/share/themes/
rm -rf /tmp/amitk

#---------------------------------------
# Plymouth Boot Logo
#---------------------------------------
log "Installing Amiga boot logo..."
sudo cp -f /opt/AmiRock/config/Logo/Amiga-Logo.png /usr/share/plymouth/themes/spinner/watermark.png
sudo cp -f /opt/AmiRock/config/Logo/Amiga-Logo.png /usr/share/plymouth/ubuntu-logo.png

sudo cp -R /opt/AmiRock/config/plymouth/AmigaKickstart /usr/share/plymouth/themes/
sudo update-alternatives --install \
    /usr/share/plymouth/themes/default.plymouth default.plymouth \
    /usr/share/plymouth/themes/spinner/spinner.plymouth 500

sudo update-initramfs -u

#---------------------------------------
# PhotoGIMP
#---------------------------------------
log "Installing PhotoGIMP..."
curl -L \
"https://github.com/Diolinux/PhotoGIMP/releases/download/1.0/PhotoGIMP.by.Diolinux.v2020.for.Flatpak.zip" \
-o "$HOME/PhotoGIMP.zip"

unzip "$HOME/PhotoGIMP.zip" -d "$HOME/PhotoGIMP"
sudo cp -R "$HOME/PhotoGIMP/.var/app/org.gimp.GIMP/config/"* "$HOME/.config/"

#---------------------------------------
# Final cleanup
#---------------------------------------
log "Final cleanup..."
sudo apt autoremove -y

log "AmiRock installation complete!"
toilet "AmiRock Ready" --metal
