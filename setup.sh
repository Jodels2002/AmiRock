#!/bin/bash
# Install AmiRock
# B.Titze 2023

BLACK='\033[0;39m'
BLUE='\033[1;34m'
GREEN='\033[1;32m'
RED='\033[1;31m'
GREY='\033[1;30m'

 clear
      
      echo "  First installation "
      echo " " 
      
      echo ""
      echo " "
      echo "1>	Hi Guys,"
      echo " "
      echo "1>	welcome to the "AmiRock" installer! "
      echo "1>CLI"

      echo "1>                  Greetings your´s "
      echo "1>Assign >NIL:      Bernd Titze"
      echo " "
      echo " " 
      echo "	Please type your sudo password ...  :-)"
      
         
      


      
#***********************************************  #AmiRock-OS install script  ***********************************
#************************************************  Graphic Driver        **************************************   
  
  clear
      		toilet "AmiRock" --metal
          
  cd /lib/firmware/
  
  sudo wget https://github.com/JeffyCN/rockchip_mirrors/blob/libmali/firmware/g610/mali_csffw.bin
  cd
sudo add-apt-repository ppa:liujianfeng1994/panfork-mesa -y
#sudo add-apt-repository ppa:liujianfeng1994/rockchip-multimedia -y

sudo apt update -y
sudo apt dist-upgrade -y

#sudo apt install glmark2 glmark2-es2 glmark2-es2-wayland -y
#sudo apt install mesa-utils -y
sudo apt install mali-g610-firmware -y
sudo apt install malirun -y

#sudo apt install kodi -y

      sudo cp -f -R /home/$USER/AmiRock/scripts/* /usr/local/bin
      sudo cp -f -R /home/$USER/AmiRock/ /opt
      sudo chmod -R 777 /usr/local/bin
      sudo chmod -R 777 /opt/AmiRock
      
#************************************************  usefull Tools        **************************************  
  sudo apt install -y dialog mc zip unzip wget toilet ksnip
  sudo apt install -y gparted ntfs-3g
  sudo apt install build-essential cmake -y
  sudo apt install arqiver  -y
  sudo apt install 7z -y
  sudo cp -rf /bin/7zz /bin/7z 

  #sudo apt install -y nemo xini* xorg
        
	clear
      toilet "AmiRock-OS" --metal
      echo " "
      echo " "
      echo "  First installation "
      echo " "

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
	     sudo rm -rf /opt/Amiga
	     sudo mkdir /opt/Amiga
	     sudo chmod -R 777 /opt/
	     sudo ln -s /opt/Amiga/ Amiga
             unzip -u  /opt/AmiRock/Amiga/Amiga.zip
       clear
      toilet "AmiRock-OS" --metal
      echo " "
      echo " "
      echo "  First installation "
      echo " "
      
       sudo rm -rf /opt/Amiga/conf/amiberry.conf
       sudo rm -rf /opt/Amiga/conf/amiberry-osx.conf
      
      sudo apt install worker unadf xdms fs-uae fs-uae-arcade fonts-amiga -y
      
      clear
      toilet "AmiRock-OS" --metal
      echo " "
      echo " "
      echo "  First installation "
      echo " "
      cd 
      unzip -u  $HOME/AmiRock/config/worker.zip
      
      sudo cp -rf /opt/Amiga/data/AmigaTopaz.ttf /usr/share/fonts/truetype/amiga/
      
      sudo cp -R /opt/Amiga/data/amiberry.png /usr/share/applications/
      sudo cp -R /opt/Amiga/data/amiberry_dev.png /usr/share/applications/
      
      
            clear
      toilet "AmiRock-OS" --metal
      echo " "
      echo " "
      echo "  First installation "
      echo " "
      
      cd 
      git clone --depth=1 https://github.com/rewtnull/amigafonts
      sudo cp -rf /home/$USER/amigafonts/ttf/* /usr/share/fonts/truetype/
      sudo rm -rf /home/$USER/amigafonts/
      
               clear
      toilet "AmiRock-OS" --metal
      echo " "
      echo " "
      echo "  First installation "
      echo " "
      
      sudo apt-get -y install libsdl2-2.0-0 libsdl2-ttf-2.0-0 libsdl2-image-2.0-0 flac mpg123 libmpeg2-4 
      clear
      toilet "AmiRock-OS" --metal
      echo " "
      echo " "
      echo "  First installation "
      echo " "
      sudo apt-get -y install libserialport
      sudo apt-get -y install libsdl2-dev libsdl2-ttf-dev libsdl2-image-dev libflac-dev libmpg123-dev libpng-dev libmpeg2-4-dev libserialport-dev
      clear
      toilet "AmiRock-OS" --metal
      echo " "
      echo " "
      echo "  First installation "
      echo " "
	sudo ln -s /opt/vc/lib/libbcm_host.so /usr/lib/aarch64-linux-gnu/libbcm_host.so.0
	    
	

#***********************************************  #AmiRock-OS install script  ***********************************
#************************************************  Amiga Desktop        ************************************** 
      clear
      toilet "AmiRock-OS" --metal
      echo " "
      echo " "
      echo "  First installation "
      echo " "
      
    
      


      cd /usr/share/icons
      sudo cp -rf $HOME/AmiRock/config/AMIGAOSLINUX.zip /usr/share/icons
      sudo unzip -u  /usr/share/icons/AMIGAOSLINUX.zip
  
      sudo rm -rf /usr/share/icons/default
      sudo cp -rf /usr/share/icons/AMIGAOSLINUX/ /usr/share/icons/default/
      clear
      toilet "AmiRock-OS" --metal
      echo " "
      echo " "
      echo "  First installation "
      echo " "
      cd $HOME/AmiRock/
      git clone --depth=1 https://github.com/x64k/amitk
      clear
      sudo cp -rf $HOME/AmiRock/amitk /usr/share/themes
      sudo cp -rf $HOME/AmiRock/config/Logo/* /usr/share/
  
            clear
      toilet "AmiRock-OS" --metal
      echo " "
      echo " "
      echo "  First installation "
      echo " "
      git clone --depth=1 https://github.com/lordwolfchild/amigaos_xfwm4_themes
      clear

      sudo cp -rf $HOME/AmiRock/amigaos_xfwm4_themes/* /usr/share/themes/
      sudo rm -rf /usr/share/themes/Default/xfwm4/
      sudo cp -rf /usr/share/themes/Amiga3.x_hidpi/* /usr/share/themes/Default/xfwm4/
      sudo cp -rf $HOME/AmiRock/config/rpd-wallpaper/Commodore/* /usr/share/backgrounds/
      sudo rm -rf /usr/share/backgrounds/u*
      sudo rm -rf /usr/share/backgrounds/j*
      sudo rm -rf /usr/share/backgrounds/J*
      sudo rm -rf /usr/share/backgrounds/w*
      sudo rm -rf /usr/share/backgrounds/o*
      sudo rm -rf /usr/share/backgrounds/Ch*
      sudo rm -rf /usr/share/backgrounds/B*
   
      echo " "
      #echo " "
      #toilet -F gay PhotoGimp
       
      #curl -L "https://github.com/Diolinux/PhotoGIMP/releases/download/1.0/PhotoGIMP.by.Diolinux.v2020.for.Flatpak.zip" -o /home/$USER/KickPi-OS/PhotoGIMP.zip && unzip /home/$USER/KickPi-OS/PhotoGIMP.zip -d /home/$USER/KickPi-OS/ 
      #sudo cp -R /home/$USER/KickPi-OS/PhotoGIMP\ by\ Diolinux\ v2020\ for\ Flatpak/.var/app/org.gimp.GIMP/config/* ~/.config
      #echo " PhotoGimp by Diolinux installed..."
      
      cd
      
      sudo rm -rf $HOME/.config/
      unzip -u  $HOME/AmiRock/config/config.zip
  
	clear

      
 #***********************************************  #AmiRock-OS install script  ***********************************
     
     if [ ! -d /opt/Backup/ ]; then
      sudo chmod -R 777 /opt/
      mkdir /opt/Backup/
      mkdir /opt/Backup/config/
      cp -rf /etc/lightdm/ /opt/Backup/config/

      fi     
#***********************************************  #AmiRock-OS install script  ***********************************
      
 
	     sudo chmod -R 777 /usr/share/plymouth/
  	cp -rf /opt/AmiRock/config/plymouth/AmigaKickstart /usr/share/plymouth/themes/
  	sudo update-alternatives --install /usr/share/plymouth/themes/default.plymouth default.plymouth /usr/share/plymouth/themes/AmigaKickstart/AmigaKickstart.plymouth 500
  	clear
      toilet "AmiRock-OS" --metal
      echo " "
      echo " "
      echo "  First installation "
      echo " "
	sudo update-initramfs -u
	
#************************************************ End First run        **************************************   		
     
 
 $HOME/AmiRock/scripts/AmiKickme.sh
      
      



