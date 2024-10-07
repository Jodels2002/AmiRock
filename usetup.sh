#!/bin/bash
# Install AmiRock
# B.Titze 2023


BLACK='\033[0;39m'
BLUE='\033[1;34m'
GREEN='\033[1;32m'
RED='\033[1;31m'
GREY='\033[1;30m'



sudo apt-get update -y

#export DISTRO=focal-stable
#wget -O - apt.radxa.com/$DISTRO/public.key | sudo apt-key add -
#echo performance | sudo tee /sys/bus/cpu/devices/cpu[046]/cpufreq/scaling_governor /sys/class/devfreq/dmc/governor /sys/class/devfreq/fb000000.gpu/governor
#sudo apt update -y
sudo apt install software-properties-common -y


      sudo cp -f -R ~/AmiRock/scripts/* /usr/local/bin
      sudo cp -f -R ~/AmiRock/ /opt
      sudo chmod -R 777 /usr/local/bin
      sudo chmod -R 777 /opt
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
  sudo apt install -y gparted ntfs-3g nemo feh
  sudo apt install build-essential -y
  sudo apt install arqiver geany -y
  sudo apt install 7zip -y
  sudo apt purge lightd* -y
  #sudo apt install cockpit -y
  sudo apt install pt2-clone xinit* -y
  clear
  sudo apt install -y synaptic chromium 
  sudo apt install -y chromium-b* 
  clear
  sudo apt install autofs -y
  clear

  
  
  
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
       if [ ! -d /opt/Amiga/dir/ ]; then
	     sudo rm -rf /opt/Amiga
	     sudo mkdir /opt/Amiga
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
      sudo apt install -y libsdl2-dev libsdl2-ttf-dev libsdl2-image-dev libflac-dev libmpg123-dev libpng-dev libmpeg2-4-dev libserialport-dev	
      
      fi
	clear
      
      toilet "AmiRock-OS" --metal
      echo " "
      echo " "
      echo "  First installation "
      echo " "
      cd 
      unzip -u  ~/config/worker.zip
      
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
      sudo cp -rf ~/amigafonts/ttf/* /usr/share/fonts/truetype/
      sudo rm -rf ~/amigafonts/
      sudo rm -rf /opt/Amiga/conf/am*
      

     
      clear
      toilet "AmiRock-OS" --metal
      echo " "
      echo " "
      echo "  First installation "
      echo " "
      sudo ln -s /opt/vc/lib/libbcm_host.so /usr/lib/aarch64-linux-gnu/libbcm_host.so.0
	    
fi	

#***********************************************  #AmiRock-OS install script  ***********************************
#************************************************  Amiga Desktop        ************************************** 
      clear
      toilet "AmiRock-OS" --metal
      echo " "
      echo " "
      echo "  First installation "
      echo " "
      
    
      


      cd /usr/share/icons
      sudo cp -rf ~/AmiRock/config/AMIGAOSLINUX.zip /usr/share/icons
      sudo unzip -u  /usr/share/icons/AMIGAOSLINUX.zip
  
      sudo rm -rf /usr/share/icons/default
      sudo cp -rf /usr/share/icons/AMIGAOSLINUX/ /usr/share/icons/default/
      clear
      toilet "AmiRock-OS" --metal
      echo " "
      echo " "
      echo "  First installation "
      echo " "
      cd ~/AmiRock/
      git clone --depth=1 https://github.com/x64k/amitk
      clear
      sudo cp -rf ~/AmiRock/amitk /usr/share/themes
      sudo cp -rf ~/AmiRock/config/Logo/* /usr/share/
  
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
      
      
      sudo rm -rf ~/.config/
      unzip -o  $HOME/AmiRock/config/config.zip
      cd $HOME/AmiRock/
      git clone --depth=1 https://github.com/lordwolfchild/amigaos_xfwm4_themes
      clear

      sudo cp -rf ~/AmiRock/amigaos_xfwm4_themes/* /usr/share/themes/
      sudo rm -rf /usr/share/themes/Default/xfwm4/
      sudo cp -rf /usr/share/themes/Amiga3.x_hidpi/* /usr/share/themes/Default/xfwm4/
      sudo cp -rf $HOME/AmiRock/config/rpd-wallpaper/Commodore/* /usr/share/backgrounds/
cd

      else
      
      sudo rm -rf ~/.config/dconf/
      sudo cp -rf ~/AmiRock/config/user $HOME/.config/dconf/
            
fi

#***********************************************  #AmiRock-OS install script  ***********************************
 
     if [ ! -d /opt/Backup/ ]; then
     
      mkdir /opt/Backup/
      mkdir /opt/Backup/config/
      cp -rf /etc/lightdm/ /opt/Backup/config/

      fi     

      
	
#************************************************ End First run        **************************************   		


	
	 sudo ln -s /opt/vc/lib/libbcm_host.so /usr/lib/aarch64-linux-gnu/libbcm_host.so.0
 #************************************************ End First run        **************************************   	     
 cd
      unzip -o  ~/AmiRock/config/config.zip
      
      sudo cp -f -R /home/$USER/AmiRock/scripts/* /usr/local/bin
      sudo cp -f -R /home/$USER/AmiRock/ /opt
      sudo chmod -R 777 /usr/local/bin
      sudo chmod -R 777 /opt/AmiRock/  
      

      
      sudo chmod -R 777 /opt
      
      if [ ! -d /opt/Backup/ ]; then
         sudo mkdir /opt/Backup/
      fi
      if [ ! -d /opt/Backup/ ]; then
         sudo mkdir /opt/Backup/
      fi         
      
      sudo cp -rf /opt/AmiRock/config/Desktop/A* /home/$USER/Desktop/
      sudo cp -rf /opt/AmiRock/config/Desktop/R* /home/$USER/Desktop/
      sudo cp -rf /opt/AmiRock/config/config /home/$USER/.worker/
      
   
      sudo unzip -o  /opt/AmiRock/config/up.zip   
      
     
      sudo cp -R /home/$USER/AmiRock/scripts/* /usr/local/bin
      #sudo rm -rf /usr/share/applications/*Ami*
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
      sudo cp -rf /opt/AmiRock/Amiga/MegaAGS/MegaAGS.uae /opt/Amiga/Amiga/conf/
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
      	
      	sudo chmod -R 775 $HOME/RetroPieBIOS
        
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
      
      if [  -d /usr/lib/armbian/ ]; then      
      
          #sudo rm -rf /home/$USER/Desktop/*
	  sudo rm -rf /opt/.config/dconf/*
          sudo cp -rf /opt/AmiRock/config/user $HOME/.config/dconf/      
      fi  
     
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

  
      #************************** Amiga Extended **********************************************************************       
     
     if [  -d /usr/lib/armbian/  ]; then
     
         toilet "AmiRock-OS" --metal
      echo " "
      echo " "
      echo "  Detect Armbian Image "
      echo " "
      
      	
	
	
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
	 

          clear
      toilet "Armbian" --metal

      echo "Amiga"
      echo " "


  	
   clear
      toilet "Afterburner" --metal
      echo " Extended "
      echo " "
      echo -e "$BLUE Updating Boot Image "
      echo -e "$GREY "
     
#************************** AmiRock **********************************************************************             
   else 
    
  	clear
      toilet "AmiRock-OS" --metal
      echo " "
      echo -e "$BLUE Updating Boot Image "
      echo -e "$GREY "
   
       #sudo cp -rf  /opt/AmiRock/config/Logo/AmiRock-OS.png /usr/share/plymouth/themes/armbian/bgrt-fallback.png
       #sudo cp -rf  /opt/AmiRock/config/Logo/AmiRock-OS.png /usr/share/plymouth/themes/spinner/bgrt-fallback.png
    
    cd
    
    
    fi
                 #Symbolic Links

 if [  -d /opt/retropie/configs/all/retroarch ]; then
      rm -d -r /home/$USER/.config/retroarch
      ln -s /opt/retropie/configs/all/retroarch/ /home/$USER/.config/retroarch
 fi
    # sudo update-initramfs -u
     
      
      
      
      
	
#***********************************************  #AmiRock-OS install script  *********************************** 
      clear   	
      echo " "
      echo "  ... repair rights  "  
      
  
      sudo chmod -R 777 /usr/local/bin
      sudo chmod -R 775 /home/$USER/.config
      sudo chmod -R 775 /home/$USER/.local
      sudo chmod -R 775 /home/$USER/Desktop
      sudo chmod -R 777 /opt
  
      sudo chmod -R 777 /home/$USER
      sudo chmod -R 777 /usr/share/applications
     
           
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


#firefox-esr http://localhost:9090/


      
      
