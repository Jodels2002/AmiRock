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
  sudo apt install -y gparted vlc ntfs-3g
  sudo apt install -y make g++

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
