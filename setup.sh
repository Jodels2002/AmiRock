#!/bin/bash
# Install AmiRock
# B.Titze 2021

BLACK='\033[0;39m'
BLUE='\033[1;34m'
GREEN='\033[1;32m'
RED='\033[1;31m'
GREY='\033[1;30m'

chsh -s /bin/bash
sudo chsh -s /bin/bash

sudo apt-get install -y wget
export DISTRO=buster-stable
wget -O - apt.radxa.com/$DISTRO/public.key | sudo apt-key add -
sudo apt-get update

  sudo apt install -y dialog mc zip unzip wget
  sudo apt install -y gparted ntfs-3g
  sudo apt install build-essential -y

  sudo apt install -y nemo 
  sudo apt install -y base-devel sdl2 sdl2_ttf sdl2_image flac mpg123 libmpeg2 
  sudo apt install -y libsdl2-dev libsdl2-ttf-dev libsdl2-image-dev libflac-dev libmpg123-dev libpng-dev libmpeg2-4-dev libserialport-dev
  
  cd /lib/firmware/
  
  sudo wget https://github.com/JeffyCN/rockchip_mirrors/blob/libmali/firmware/g610/mali_csffw.bin
  cd
sudo add-apt-repository ppa:liujianfeng1994/panfork-mesa -y
sudo add-apt-repository ppa:liujianfeng1994/rockchip-multimedia -y

sudo apt update -y
sudo apt dist-upgrade -y
sudo apt install kodi -y

git clone https://github.com/pymumu/fan-control-rock5b
cd fan-control-rock5b
make package
sudo dpkg -i fan-control*.deb
sudo systemctl enable fan-control
systemctl start fan-control


      cd /usr/share/icons
      sudo cp -rf $HOME/AmiRock/config/AMIGAOSLINUX.zip /usr/share/icons
      sudo unzip -u  /usr/share/icons/AMIGAOSLINUX.zip
      sudo rm -rf /usr/share/icons/default
      sudo cp -rf /usr/share/icons/AMIGAOSLINUX/ /usr/share/icons/default/
      
      cd $HOME/AmiRock/
      git clone --depth=1 https://github.com/x64k/amitk
      clear
      sudo cp -rf $HOME/AmiRock/amitk /usr/share/themes
      sudo cp -rf /home/$USER/KickPi-OS/amitk /usr/share/themes
      
      git clone --depth=1 https://github.com/lordwolfchild/amigaos_xfwm4_themes
      clear

      sudo cp -rf $HOME/AmiRock/amigaos_xfwm4_themes/* /usr/share/themes/
      sudo rm -rf /usr/share/themes/Default/xfwm4/
      sudo cp -rf /usr/share/themes/Amiga3.x_hidpi/* /usr/share/themes/Default/xfwm4/
      sudo cp -rf $HOME/AmiRock/config/rpd-wallpaper/Commodore/* /usr/share/backgrounds/
      cp -rf $HOME/AmiRock/config/xfce4/* $HOME/.config/xfce4/
   
     
      
      
      



