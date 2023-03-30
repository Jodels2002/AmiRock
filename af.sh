#!/bin/bash
# Install AmiRock
# B.Titze 2023


BLACK='\033[0;39m'
BLUE='\033[1;34m'
GREEN='\033[1;32m'
RED='\033[1;31m'
GREY='\033[1;30m'

sudo rm -rf /home/$USER/.cache/*
sudo rm -rf /tmp/


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
      sudo cp -f -R /home/$USER/AmiRock/scripts/* /usr/local/bin
      sudo cp -f -R /home/$USER/AmiRock/ /opt
      sudo chmod -R 775 /usr/local/bin
      sudo chmod -R 775 /opt/
  clear
      		toilet "AmiRock" --metal
          
  cd /lib/firmware/
  
  sudo wget https://github.com/JeffyCN/rockchip_mirrors/blob/libmali/firmware/g610/mali_csffw.bin
  cd
sudo add-apt-repository ppa:liujianfeng1994/panfork-mesa -y
#sudo add-apt-repository ppa:liujianfeng1994/rockchip-multimedia -y

sudo apt update -y
sudo apt dist-upgrade -y
sudo apt-get autoremove -y
sudo apt install mali-g610-firmware -y
sudo apt install malirun -y

#sudo apt install glmark2 glmark2-es2 glmark2-es2-wayland -y
#sudo apt install mesa-utils -y
#sudo apt install kodi -y

      
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
sudo systemctl start fan-control   

#************************************************  usefull Tools        **************************************  
  sudo apt install -y dialog mc zip unzip wget toilet ksnip
  sudo apt install -y gparted ntfs-3g nemo
  #sudo apt install build-essential -y
  sudo apt install arqiver geany -y
  sudo apt install 7zip -y
  #sudo apt install cockpit -y
  sudo apt install pt2-clone -y
  sudo apt install raspi-config -y
  sudo raspi-config nonint do_expand_rootfs
  
  clear
  sudo apt purge terminator -y
  sudo cp -rf /bin/7zz /bin/7z 
 

        
	clear
      toilet "AmiRock-OS" --metal
      echo " "
      echo " "
      echo "  First installation "
      echo " "



#***********************************************  #AmiRock-OS install script  ***********************************
#************************************************  Amiga        ************************************** 
cd
	     sudo rm -rf /opt/Amiga
	     sudo mkdir /opt/Amiga
	     sudo chmod -R 755 /opt/
	     sudo ln -s /opt/Amiga/ Amiga
	     cd /opt/
             unzip -u  /opt/AmiRock/Amiga/Amiga.zip
       clear
      toilet "AmiRock-OS" --metal
      echo " "
      echo " "
      echo "  First installation "
      echo " "
      
       sudo rm -rf /opt/Amiga/conf/amiberry.conf
       sudo rm -rf /opt/Amiga/conf/amiberry-osx.conf
      
      sudo apt install worker unadf xdms fonts-amiga -y
      sudo apt install -y libsdl2-2.0-0 libsdl2-ttf-2.0-0 libsdl2-image-2.0-0 flac mpg123 libmpeg2-4 libserialport0
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
      sudo rm -rf /opt/Amiga/conf/am*
      

     
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
     
      sudo rm -rf /usr/share/backgrounds/u*
      sudo rm -rf /usr/share/backgrounds/j*
      sudo rm -rf /usr/share/backgrounds/J*
      sudo rm -rf /usr/share/backgrounds/w*
      sudo rm -rf /usr/share/backgrounds/o*
      sudo rm -rf /usr/share/backgrounds/Ch*
      sudo rm -rf /usr/share/backgrounds/B*
      cd
    
 #***********************************************  #AmiRock-OS Not Afterburner  ***********************************     
      if [ ! -d /home/rock/wine/share/wine ]; then
        clear
      toilet "AmiRock-OS" --metal
      echo " "
      echo " "
      echo "  First installation"
      echo " "
      
      
      sudo rm -rf $HOME/.config/
      unzip -u  $HOME/AmiRock/config/config.zip
      cd $HOME/AmiRock/
      git clone --depth=1 https://github.com/lordwolfchild/amigaos_xfwm4_themes
      clear

      sudo cp -rf $HOME/AmiRock/amigaos_xfwm4_themes/* /usr/share/themes/
      sudo rm -rf /usr/share/themes/Default/xfwm4/
      sudo cp -rf /usr/share/themes/Amiga3.x_hidpi/* /usr/share/themes/Default/xfwm4/
      sudo cp -rf $HOME/AmiRock/config/rpd-wallpaper/Commodore/* /usr/share/backgrounds/
cd
            
fi

#***********************************************  #AmiRock-OS install script  ***********************************
 
     if [ ! -d /opt/Backup/ ]; then
      sudo chmod -R 755 /opt/
      mkdir /opt/Backup/
      mkdir /opt/Backup/config/
      cp -rf /etc/lightdm/ /opt/Backup/config/

      fi     

      
	
#************************************************ End First run        **************************************   		


          clear
      toilet "Afterburner" --metal
      echo " "
      echo " "
      echo "  Extendet"
      echo " "
	
	 cd
	
         sudo apt purge gnome-terminal -y
	 sudo apt purge nautilus nautilus-action -y
	 sudo apt install xfce4-terminal -y
	 sudo apt purge terminator -y
	 #sudo apt purge gnome-c* -y
	 
         #sudo apt install xfce4 -y
	 
	 cp -rf /home/$USER/AmiRock/scripts/bashrc /home/$USER/.bashrc
	 sudo usermod -a -G root rock
	 sudo rm -rf $HOME/.config/
         unzip -u  $HOME/AmiRock/config/afconfig.zip
	 
	 #sudo chmod -R 776 /home/rock/
	 #sudo reboot now
	 sudo apt-get autoremove -y
	 
	 sudo chmod -R 775 /usr/share/plymouth/
	 sudo rm -rf /usr/share/plymouth/themes/spinner/watermark.png
	 sudo cp -rf /opt/AmiRock/config/Logo/afterburner-extended.png /usr/share/plymouth/themes/spinner/watermark.png
	 sudo cp -rf /opt/AmiRock/config/Logo/afterburner-extended.png /usr/share/plymouth/ubuntu-logo.png
  	sudo cp -rf /opt/AmiRock/config/plymouth/AmigaKickstart /usr/share/plymouth/themes/
  	sudo update-alternatives --install /usr/share/plymouth/themes/default.plymouth default.plymouth /usr/share/plymouth/themes/spinner/spinner.plymouth 500
  	clear
      toilet "Afterburner" --metal
      echo " "
      echo " "
      echo "  Extended "
      echo " "
      sudo update-initramfs -u
	 
	 
	 sudo ln -s /home/rock/ /home/pi
	 sudo echo "bootlogo=true" >> /boot/armbianEnv.txt
	 sudo echo "overlays=rk3588-i2c0-m1" >> /boot/armbianEnv.txt

      
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
      sudo chmod -R 755 /usr/local/bin
      sudo chmod -R 755 /opt/AmiRock
      
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
	     sudo chmod -R 755 /opt/
	     sudo ln -s /opt/Amiga/ Amiga
	     cd /opt/
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
      sudo chmod -R 755 /opt/
      mkdir /opt/Backup/
      mkdir /opt/Backup/config/
      cp -rf /etc/lightdm/ /opt/Backup/config/

      fi     
#***********************************************  #AmiRock-OS install script  ***********************************
      
 
	     sudo chmod -R 755 /usr/share/plymouth/
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
     

Skip to content
Pull requests
Issues
Codespaces
Marketplace
Explore
@Jodels2002
Jodels2002 /
AmiRock
Public

Cannot fork because you own this repository and are not a member of any organizations.

Code
Issues
Pull requests
Actions
Projects
Wiki
Security
Insights

    Settings

AmiRock/scripts/AmiKickme.sh
@Jodels2002
Jodels2002 Update AmiKickme.sh
Latest commit 95cb552 Mar 29, 2023
History
1 contributor
380 lines (289 sloc) 11.5 KB
#!/bin/bash
#***********************************************  #AmiRock-OS install script  ***********************************
# Install AmiRock-OS
# B.Titze 2023

      #mkdir /home/$USER/.backup
      BLACK='\033[0;39m'
      BLUE='\033[1;34m'
      GREEN='\033[1;32m'
      RED='\033[1;31m'
      GREY='\033[1;30m'
      sudo rm -rf /home/$USER/.cache/*
      sudo rm -rf /tmp/  
      clear
  cp -rf /opt/AmiRock/scripts/.bashrc /home/$USER/
 
  
  if [ ! -d /opt/Amiga/data/ ]; then
      

       cd /opt/
	     sudo rm -rf /opt/Amiga
             #sudo ln -s /opt/Amiga/ Amiga
	        
             sudo unzip -u  /opt/AmiRock/Amiga/Amiga.zip
       clear
      toilet "AmiRock-OS" --metal
      echo " "
      echo " "
      echo "  Fix Amiga Folder "
      echo " "
  
      cd 

      sudo cp -rf /opt/Amiga/data/AmigaTopaz.ttf /usr/share/fonts/truetype/amiga/
      
      sudo cp -R /opt/Amiga/data/amiberry.png /usr/share/applications/
      sudo cp -R /opt/Amiga/data/amiberry_dev.png /usr/share/applications/
      sudo ln -s /opt/vc/lib/libbcm_host.so /usr/lib/aarch64-linux-gnu/libbcm_host.so.0
      
            clear
      toilet "AmiRock-OS" --metal
      echo " "
       
      cd 

fi
      
      sudo chmod -R 775 /opt/
      
      if [ ! -d /opt/Backup/ ]; then
         sudo mkdir /opt/Backup/
      fi
      if [ ! -d /opt/Backup/ ]; then
         sudo mkdir /opt/Backup/
      fi         
      
      sudo cp -rf /opt/AmiRock/config/Desktop/A* /home/$USER/Desktop/
      sudo cp -rf /opt/AmiRock/config/config /home/$USER/.worker/
      
   
      sudo unzip -o  /opt/AmiRock/config/up.zip   
      sudo chmod -R 755 /home/$USER/AmiRock
     
      sudo cp -R /home/$USER/AmiRock/scripts/* /usr/local/bin
      sudo rm -rf /usr/share/applications/*Ami*
      sudo cp -R /home/$USER/AmiRock/config/Desktop/* /usr/share/applications/
      sudo cp -rf /opt/AmiRock/config/Logo/* /opt/AmiRock/config/
      sudo cp -rf /opt/AmiRock/config/Logo/boot.jpg /usr/share/backgrounds/armbian-lightdm/armbian03-Dre0x-Minum-dark-blurred-3840x2160.jpg
         
      clear
      toilet "AmiRock-OS" --metal
      echo -e "$BLUE AmiRock-OS ROM Operating System and Libraries" 
      echo -e "$GREY Version V2.0 2020-2021 AmiRock-OS "
      echo " No Rights Reserved.  "
      echo " "
      echo -e "$BLUE"
      echo " "
      echo " AmiRock-OS Update Linux System ..."
      echo -e "$GREY "
      echo " "
      sudo apt-get update
      sudo apt-get upgrade -y

  
cd /home/$USER/AmiRock/

clear
             
    
      

      # Update allways Routine
      if [ ! -d /opt/AmiRock/ ]; then
 
      clear
      toilet "AmiRock-OS" --metal
      echo -e "$BLUE AmiRock-OS ROM Operating System and Libraries" 
      echo -e "$GREY Version V2.0 2020-2021 AmiRock-OS "
      echo " No Rights Reserved.  "
      echo " "
      echo -e "$BLUE"
      echo " "
       	
	
      echo "Update is running "             
      echo " "
      echo " "      
      else 
      clear
      toilet "AmiRock-OS" --metal
      echo -e "$BLUE AmiRock-OS ROM Operating System and Libraries" 
      echo -e "$GREY Version V2.0 2020-2021 AmiRock-OS "
      echo " No Rights Reserved.  "
      echo " "
      echo -e "$BLUE"
      echo " "
      echo "Update is running "
      echo " "
      echo " System optimized :) "
      echo " "
      echo " " 
fi
   

if [ ! -f /opt/Amiga/data/amiberry_dev.png ]; then
      sudo cp -R /opt/Amiga/amiberry_dev.png /opt/Amiga/data/
      fi      
cd	     

if [ -d /opt/Backup/MegaAGS/games/Amiga/ ]; then
   
      sudo cp -rf /opt/AmiRock/Amiga/MegaAGS/MegaAGS.desktop /usr/share/applications/ 
      #sudo cp -rf /opt/AmiRock/Amiga/MegaAGS/MegaAGS.uae /opt/Amiga/Amiga/conf/
fi 
  
   sudo cp -rf  $HOME/Amiga/data/amiberry_dev.png /usr/share/applications/  
   
            if [ ! -f /opt/Amiga/amiberry_old ]; then
            cp -rf  /opt/Amiga/amiberry_old /opt/Backup/
	    fi
	    if [ ! -f /opt/Amiga/amiberry ]; then
            cp -rf  /opt/Amiga/amiberry /opt/Backup/
	    fi
	    if [ ! -f /opt/Amiga/amiberry_dev ]; then
	    cp -rf  /opt/Amiga/amiberry_dev /opt/Backup/
	    fi
	    
	    if [ ! -f /opt/Amiga/kickstarts/A1200.rom ]; then
	    
	             clear
      toilet "AmiRock-OS" --metal
      echo -e "$RED "
      echo "1>Please note that the Kickroms and Workbench files are still under copyright!  "
      echo -e "$BLUE "
      echo "1>So only use this image if you own the original Amigas, Amiga Forever."
      echo "1>CLI: "
      echo -e "$BLACK "
      echo "1>                  Greetings your´s "
      echo "1>Assign >NIL:      Bernd Titze"
      echo " "
  

   cd  
      	git clone --depth=1 https://github.com/archtaurus/RetroPieBIOS.git
      	
      	sudo chmod -R 755 $HOME/RetroPieBIOS
        
      	sudo cp -rf $HOME/RetroPieBIOS/BIOS/kick34005.A500 /opt/Amiga/kickstarts/A500.rom
      	sudo cp -rf $HOME/RetroPieBIOS/BIOS/kick40063.A600 /opt/Amiga/kickstarts/A600.rom
      	sudo cp -rf $HOME/RetroPieBIOS/BIOS/kick40068.A1200 /opt/Amiga/kickstarts/A1200.rom
	sudo cp -rf $HOME/RetroPieBIOS/BIOS/kick40068.A1200 /opt/Amiga/kickstarts/kick31a1200.rom
	
      	sudo rm -rf /home/$USER/RetroPieBIOS 
 clear
      toilet "AmiRock-OS" --metal
      echo -e "$BLUE AmiRock-OS ROM Operating System and Libraries" 
      echo -e "$GREY Version V2.0 2020-2021 AmiRock-OS "
      echo " No Rights Reserved.  "    
	
 fi
  if [ ! -d /opt/Amiga/dir/Work/ ]; then
      mkdir /opt/Amiga/dir/
      mkdir /opt/Amiga/dir/Work/
      mkdir /opt/Amiga/dir/Software
      mkdir /opt/Amiga/Install/
      mkdir /opt/Amiga/kickstarts
  fi

    clear
      toilet "AmiRock-OS" --metal
      echo -e "$BLUE AmiRock-OS ROM Operating System and Libraries" 
      echo -e "$GREY Version V2.0 2020-2021 AmiRock-OS "
      echo " No Rights Reserved.  "
      echo " "
      echo -e "$BLUE"
      echo " "
      echo "  ... repair settings  "  
      
      sudo rm -rf /home/$USER/.bashrc
      cp -rf $HOME/AmiRock/scripts/.bashrc /home/$USER/.bashrc
   
      
      if [ ! -f /home/$USER/Desktop/AmiRock-OS.desktop ]; then
        sudo cp -rf /usr/share/applications/AmiRock-OS.desktop /home/$USER/Desktop/AmiRock-OS.desktop
      fi  
            
      if [ ! -f /usr/share/applications/MegaAGS.desktop ]; then
      
      #sudo cp -rf $HOME/AmiRock/config/MegaAGS.desktop /usr/share/applications/ 
     clear
      toilet "AmiRock-OS" --metal
      echo -e "$BLUE AmiRock-OS ROM Operating System and Libraries" 
      echo -e "$GREY Version V2.0 2020-2021 AmiRock-OS "
      echo " No Rights Reserved.  "
      echo " "
      
      fi
   
      echo " "
      echo "  ... cleanup Amiga folder  " 
     
      echo " "
      echo "  ... delete unnecessary files  " 
      cd  /opt/
      sudo find . -name "\._*" -type f -print0 | xargs -0 /bin/rm -f
      sudo find . -name "\.DS_*" -type f -print0 | xargs -0 /bin/rm -f
      sudo find . -name "_UAEFSDB.___" -type f -print0 | xargs -0 /bin/rm -f
      cd ~
       sudo rm -rf /opt/Amiga/conf/amiberry.conf
       sudo rm -rf /opt/Amiga/conf/amiberry-osx.conf      
     clear
      
      if [ -d $HOME/AMIGAOSLINUX/ ]; then
         sudo rm -rf $HOME/AMIGAOSLINUX/
      fi
      
      if [ -d $HOME/AmiRock/ ]; then
         sudo rm -rf $HOME/AmiRock/
      fi
      
      if [ -d $HOME/fan-control-rock5b/ ]; then
         sudo rm -rf $HOME/fan-control-rock5b/
      fi
      
      if [ -d $HOME/Schreibtisch/ ]; then
         sudo rm -rf $HOME/Schreibtisch/
	 sudo rm -rf $HOME/.config/user-dirs.dirs
	 mkdir $HOME/Desktop
      fi
      
      if [ -d $HOME/Videos/ ]; then
         sudo rm -rf $HOME/Videos/
      fi
      
      if [ -d $HOME/Bilder/ ]; then
         sudo rm -rf $HOME/Bilder/
      fi
      
      if [ ! -d /opt/data/amiberry_dev.png/ ]; then
      sudo cp -rf  /opt/AmiRock/Amiga/amiberry_dev.png /opt/Amiga/data/
      fi
      
      if [ ! -d /opt/OLED/images/ ]; then
       mkdir /opt/OLED
       mkdir /opt/OLED/images
      fi
      if [ -d /opt/OLED/ ]; then
       cp -rf /opt/AmiRock/OLED/* /opt/OLED/
       sudo cp -rf /opt/OLED/fonts/* /usr/share/fonts/truetype/
      fi
       
  
      #************************** Afterburner Extended **********************************************************************       
  
     
         toilet "AmiRock-OS" --metal
      echo " "
      echo " "
      echo "  Detect Afterburner Image "
      echo " "
      
      	 sudo rm -rf /home/$USER/Desktop/*
	
	
	 if [ ! -d /home/$USER/Videos/ ]; then
	 mkdir /home/$USER/Videos
	 fi
	 	 
	 if [ ! -d /home/$USER/Movies/ ]; then
	 mkdir /home/$USER/Movies
	 fi
	  
	    #sudo cp -rf /opt/AmiRock/config/armbianEnv.txt /boot/
	    sudo cp -rf /opt/AmiRock/config/custom.conf /etc/gdm3/
	 
	 sudo rm -rf /home/$USER/.config/dconf/*
	 sudo cp -rf /opt/AmiRock/config/user /home/$USER/.config/dconf/
	 sudo chmod -R 775 /home/rock/

          clear
      toilet "Afterburner" --metal

      echo "Extendet"
      echo " "

	      sudo chmod -R 775 /usr/share/plymouth/
	      sudo rm -rf /usr/share/plymouth/themes/armbian/watermark.png
	      sudo cp -rf /opt/AmiRock/config/Logo/afterburner-extended.png /usr/share/plymouth/themes/armbian/watermark.png
	      sudo cp -rf /opt/AmiRock/config/Logo/afterburner-extended.png /usr/share/plymouth/ubuntu-logo.png
  	    sudo cp -rf /opt/AmiRock/config/plymouth/AmigaKickstart /usr/share/plymouth/themes/
  	    sudo update-alternatives --install /usr/share/plymouth/themes/default.plymouth default.plymouth /usr/share/plymouth/themes/armbian/armbian.plymouth 501
  	
   clear
      toilet "Afterburner" --metal
      echo " Extended "
      echo " "
      echo -e "$BLUE Updating Boot Image "
      echo -e "$GREY "
     

     sudo update-initramfs -u
     
      
      
      
      
	
#***********************************************  #AmiRock-OS install script  *********************************** 
      clear   	
      echo " "
      echo "  ... repair rights  "  
      
  
      sudo chmod -R 775 /usr/local/bin/
      sudo chmod -R 775 /home/$USER/.config/
      sudo chmod -R 775 /home/$USER/.local/
      sudo chmod -R 777 /opt/
  
      sudo chmod -R 775 /home/$USER/
      sudo chmod -R 775 /usr/share/applications/
     
           
      sudo rm -rf ~/AmiRock
      
  
cd	    
	    	
 clear
      toilet "AmiRock-OS" --metal
      echo -e "$BLUE AmiRock-OS ROM Operating System and Libraries" 
      echo -e "$GREY Version V2.0 2020-2021 AmiRock-OS "
echo " No Rights Reserved.  "
echo -e "$BLACK "
echo " Type 'd' to boot into AmiRock Workbench"
echo ""
echo -e " 1.>  ( u ) AmiRock-OS Update                     "
echo " 1.>  ( m ) ArmRock-OS Config                       " 
echo -e " 1.>  ( c ) Armbian-Config                       "
echo " 1.>  ( s ) Shutdown                                "  
echo -e "$BLUE "
echo "  ... finished AmiRock setup :-)  " 
echo -e "$BLACK "

m
#firefox-esr http://localhost:9090/
Footer
© 2023 GitHub, Inc.
Footer navigation

    Terms
    Privacy
    Security
    Status
    Docs
    Contact GitHub
    Pricing
    API
    Training
    Blog
    About


      



  
  
