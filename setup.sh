#!/bin/bash
# Install AmiRock
# B.Titze 2023

BLACK='\033[0;39m'
BLUE='\033[1;34m'
GREEN='\033[1;32m'
RED='\033[1;31m'
GREY='\033[1;30m'



 echo ""
      echo " "
      echo "1>	Hi Guys,"
      echo " "
      echo "1>	welcome to the "AmiRock" installer! "
      echo "1>CLI"
      echo "1>CLI"
      echo "1>	Please note that the Kickroms and Workbench files are still under copyright (Amiga Forever)!  "
      echo "1>CLI"
      echo "1>	So only use this image if you own the original Amigas, Amiga Forever."
      echo "1>CLI: "
      echo "1>                  Greetings your´s "
      echo "1>Assign >NIL:      Bernd Titze"
      echo " "
      echo " " 
      echo "	LOADWB ...  :-)"
      sleep 4s
      echo " "
      echo " " 
      
      
#***********************************************  #AmiRock-OS install script  ***********************************
#************************************************  Radxa Key update        **************************************   

chsh -s /bin/bash


sudo apt-get install -y wget
export DISTRO=buster-stable
wget -O - apt.radxa.com/$DISTRO/public.key | sudo apt-key add -
sudo apt-get update

#***********************************************  #AmiRock-OS install script  ***********************************
#************************************************  usefull Tools        **************************************  
  sudo apt install -y dialog mc zip unzip wget toilet
  sudo apt install -y gparted ntfs-3g
  sudo apt install build-essential -y
  sudo apt install arqiver  -y

  sudo apt install -y nemo 
  sudo apt install -y base-devel sdl2 sdl2_ttf sdl2_image flac mpg123 libmpeg2 
  sudo apt install -y libsdl2-dev libsdl2-ttf-dev libsdl2-image-dev libflac-dev libmpg123-dev libpng-dev libmpeg2-4-dev libserialport-dev
  
#***********************************************  #AmiRock-OS install script  ***********************************
#************************************************  Graphic Driver        **************************************   
  
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

#***********************************************  #AmiRock-OS install script  ***********************************
#************************************************  Fan Control by pymumu        **************************************   

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

#***********************************************  #AmiRock-OS install script  ***********************************
#************************************************  Amiga        ************************************** 

      cd 
      unzip -u  $HOME/AmiRock/Amiga/Amiga.zip
      sudo apt install python3-pip
      sudo python3 -m pip install -U setuptools
      sudo python3 -m pip install -U amitools
      

#***********************************************  #AmiRock-OS install script  ***********************************
#************************************************  Amiga Desktop        ************************************** 

      if [ ! -d $HOME/Documents/ ]; then
      mkdir $HOME/Documents/
      fi
      if [ ! -d $HOME/Desktop/ ]; then
      mkdir $HOME/Desktop/
     
        mkdir $HOME/Downloads
        mkdir $HOME/Documents
        mkdir $HOME/Music
        mkdir $HOME/Pictures
        mkdir $HOME/Videos
      fi

      cd /usr/share/icons
      sudo cp -rf $HOME/AmiRock/config/AMIGAOSLINUX.zip /usr/share/icons
      sudo unzip -u  /usr/share/icons/AMIGAOSLINUX.zip
      sudo rm -rf /usr/share/icons/default
      sudo cp -rf /usr/share/icons/AMIGAOSLINUX/ /usr/share/icons/default/
      
      cd $HOME/AmiRock/
      git clone --depth=1 https://github.com/x64k/amitk
      clear
      sudo cp -rf $HOME/AmiRock/amitk /usr/share/themes
  
      
      git clone --depth=1 https://github.com/lordwolfchild/amigaos_xfwm4_themes
      clear

      sudo cp -rf $HOME/AmiRock/amigaos_xfwm4_themes/* /usr/share/themes/
      sudo rm -rf /usr/share/themes/Default/xfwm4/
      sudo cp -rf /usr/share/themes/Amiga3.x_hidpi/* /usr/share/themes/Default/xfwm4/
      sudo cp -rf $HOME/AmiRock/config/rpd-wallpaper/Commodore/* /usr/share/backgrounds/
      cd $HOME/.config/
      unzip -u  $HOME/AmiRock/config/Desktop/Settings.zip
  
      
      cd
 #***********************************************  #AmiRock-OS install script  ***********************************

        sudo systemctl disable apt-daily-upgrade.service 
	sudo systemctl disable apt-daily-upgrade.timer
	sudo systemctl disable apt-daily.service
	sudo systemctl disable apt-daily.timer
	sudo systemctl disable cups
        sudo systemctl disable syslog.socket
	sudo systemctl disable service webmin
	sudo systemctl disable man-db.service 
	sudo systemctl disable man-db.timer
	sudo systemctl disable alsa-restore.service at boot time
	sudo systemctl disable alsa-state.service at boot time    
        sudo update-rc.d motd remove
	sudo rm -rf /etc/systemd/pstore.conf
       	sudo rm -rf /etc/systemd/journald.conf
       	sudo rm -rf /etc/systemd/system/network-online.target.wants/
       	sudo rm -rf /etc/systemd/system/syslog.service
       	sudo rm -rf /etc/systemd/system/lo*
       	sudo rm -rf /etc/systemd/system/cu*
        sudo rm -rf /etc/systemd/system/multi-user.target.wants/cu*
       	sudo rm -rf /etc/systemd/system/multi-user.target.wants/rsyslog.service
       	sudo rm -rf /etc/systemd/system/printer.target.wants/
	
#************************************************ End First run        **************************************   		
 $HOME/AmiRock/scripts/AmiKickme.sh
      
      



