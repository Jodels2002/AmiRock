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

  sudo apt install -y dialog mc zip unzip wget toilet
  sudo apt install -y gparted ntfs-3g
  sudo apt install build-essential -y

  sudo apt install -y nemo 
  sudo apt install -y base-devel sdl2 sdl2_ttf sdl2_image flac mpg123 libmpeg2 
  sudo apt install -y libsdl2-dev libsdl2-ttf-dev libsdl2-image-dev libflac-dev libmpg123-dev libpng-dev libmpeg2-4-dev libserialport-dev
  clear
      		toilet "AmiRock" --metal
          
  cd /lib/firmware/
  
  sudo wget https://github.com/JeffyCN/rockchip_mirrors/blob/libmali/firmware/g610/mali_csffw.bin
  cd
sudo add-apt-repository ppa:liujianfeng1994/panfork-mesa -y
sudo add-apt-repository ppa:liujianfeng1994/rockchip-multimedia -y

sudo apt update -y
sudo apt dist-upgrade -y
sudo apt install kodi -y
clear
      		toilet "AmiRock" --metal
      		echo " "
      		echo " Fan-Control by pymumu"
          
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
      
      cd
      		clear
      		toilet "AmiRock" --metal
      		echo " "
      		echo " "
       		echo "Compiling now ...Amiberry :-)"
          
            sudo rm -rf amiberry
            git clone https://github.com/midwan/amiberry
            cd amiberry

      
     		make -j4 PLATFORM=rk3588
            sudo chmod -R 777 $HOME/amiberry
	    mkdir $HOME/Amiga/
            cp -rf $HOME/Amiga/amiberry  $HOME/Amiga/amiberry_old
            cp -rf $HOME/amiberry/*  $HOME/Amiga/
             sudo rm -rf $HOME/amiberry
	     sudo rm -rf $HOME/Amiga/abr
	     sudo rm -rf $HOME/Amiga/cmake
	     sudo rm -rf $HOME/Amiga/external
	     sudo rm -rf $HOME/Amiga/src
	     sudo rm -rf $HOME/Amiga/Android.mk
	     sudo rm -rf $HOME/Amiga/whdboot-src
	     sudo rm -rf $HOME/Amiga/VSLinux
	     sudo rm -rf $HOME/Amiga/Info.plist.template
	     sudo rm -rf $HOME/Amiga/CMakeSettings.json
	     sudo rm -rf $HOME/Amiga/Makefile
	     sudo rm -rf $HOME/Amiga/Entitlements.plist
	     sudo rm -rf $HOME/Amiga/CMakeLists.txt
	     sudo rm -rf $HOME/Amiga/PULL_REQUEST_TEMPLATE
	     sudo rm -rf $HOME/Amiga/macos_init_amiberry.zsh
	     sudo rm -rf $HOME/Amiga/make-bundle.sh
	     
	     
	     
	     
	     
      
      



