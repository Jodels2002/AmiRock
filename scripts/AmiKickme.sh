#!/bin/bash
#***********************************************  #AmiRock-OS install script  ***********************************
# Install AmiRock-OS
# B.Titze 2023
#*************************************************************************************************************
      #mkdir /home/$USER/.backup
      BLACK='\033[0;39m'
      BLUE='\033[1;34m'
      GREEN='\033[1;32m'
      RED='\033[1;31m'
      GREY='\033[1;30m'
      if [ ! -d /opt/Backup/ ]; then
         sudo mkdir /opt/Backup/
      fi	 
      sudo chmod -R 777 /home/$USER/AmiRock-OS
      sudo chmod -R 777 /opt/Backup/
      sudo cp -R /home/$USER/AmiRock/scripts/* /usr/local/bin
      sudo cp  /opt/AmiRock/config/splash/* /etc/systemd/system/
    
      sudo rm -rf /usr/share/applications/*Ami*
      sudo cp -R /home/$USER/AmiRock/config/Desktop/* /usr/share/applications/
      sudo apt install -y samba cifs-utils
     
      clear
      toilet "AmiRock-OS" --metal
      echo -e "$GREY AmiRock-OS ROM Operating System and Libraries" 
      echo " Version V2.0 2020-2021 AmiRock-OS "
      echo " No Rights Reserved.  "
      echo " "
      

      
      #sudo mv /usr/local/bin/uk /usr/local/bin/u
      
           
      if [ ! -d /home/$USER/.config/autostart/ ]; then
      echo " Create Autostart "
      mkdir /home/$USER/.config/autostart/
      fi
      #sudo cp -rf /opt/AmiRock/config/Keyboard.desktop /home/$USER/.config/autostart/
      	
      clear
      toilet "AmiRock-OS" --metal
      echo -e "$GREY AmiRock-OS ROM Operating System and Libraries" 
      echo " Version V2.0 2020-2021 AmiRock-OS "
      echo " No Rights Reserved.  "
      echo " "
      echo -e "$BLUE"
      echo " "
      echo "AmiRock-OS Update Linux System ..."
      echo -e "$GREY "
      echo " "
      sudo apt-get update
      sudo apt-get upgrade -y
  
      

  
cd /home/$USER/AmiRock/

clear

     
       cp -rf /home/$USER/AmiRock/config/.bashrc /home/$USER/
      
       sudo chmod -R 777 /usr/local/bin/

      # (crontab -l 2>/dev/null; echo "*/5 * * * * /usr/local/bin/loop.sh") | crontab -
      
       LED
       if [ -d /OLED/ ]; then
       AmiRock-OS.sh
       fi
       
      
fi    
                    
 

      # Update allways Routine
      if [ ! -d /opt/AmiRock/ ]; then
 
      clear
      toilet "AmiRock-OS" --metal
      echo -e "$GREY AmiRock-OS ROM Operating System and Libraries" 
      echo " Version V2.0 2020-2021 AmiRock-OS "
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
      echo -e "$GREY AmiRock-OS ROM Operating System and Libraries" 
      echo " Version V2.0 2020-2021 AmiRock-OS "
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
       

     LED
 if [ ! -d /boot/dietpi/func/ ]; then
      sudo cp -R /opt/AmiRock/config/dietpi-banner /boot/dietpi/func/dietpi-banner
      fi
	
	
if [ "$(getconf LONG_BIT)" == "64" ]; then
 # Only if Amiberry update hase made
   
        cd
	     
      clear
      toilet "AmiRock-OS" --metal
      echo -e "$GREY AmiRock-OS ROM Operating System and Libraries" 
      echo " Version V2.0 2020-2021 AmiRock-OS "
      echo " No Rights Reserved.  "
      echo " "
      echo -e "$BLUE"
      echo " "
            REVCODE=$(sudo cat /proc/cpuinfo | grep 'Revision' | awk '{print $3}' | sed 's/^ *//g' | sed 's/ *$//g')
if [ "$REVCODE" = "a020d3" ]; then
    PIMODEL="Raspberry Pi 3 Model B Plus, 1 GB RAM - 64 bit"
	echo "$PIMODEL ($REVCODE)"

	

cp -R /home/$USER/AmiRock/Amiga/amiberry_64 /home/$USER/Amiga/amiberry
cp -R /home/$USER/AmiRock/Amiga/amiberry_64 /home/$USER/Amiga/amiberry_dmx
cp -R /home/$USER/AmiRock/Amiga/amiberry_64 /home/$USER/Amiga/amiberry_sdl
cp -R /home/$USER/AmiRock/Amiga/amiberry_dev64 /home/$USER/Amiga/amiberry_dev

sudo cp -R /home/$USER/AmiRock/config/config3_64bit.txt /boot/config.txt
      
fi
 	    
    
else
      clear
      toilet "AmiRock-OS" --metal
      echo -e "$GREY AmiRock-OS ROM Operating System and Libraries" 
      echo " Version V2.0 2020-2021 AmiRock-OS "
      echo " No Rights Reserved.  "
      echo " "
      echo -e "$BLUE"
      echo " "
      
      REVCODE=$(sudo cat /proc/cpuinfo | grep 'Revision' | awk '{print $3}' | sed 's/^ *//g' | sed 's/ *$//g')
if [ "$REVCODE" = "a020d3" ]; then
    PIMODEL="Raspberry Pi 3 Model B Plus, 1 GB RAM - 32bit"
	echo "$PIMODEL ($REVCODE)"




cp -R /home/$USER/AmiRock/Amiga/amiberry_sdl /home/$USER/Amiga/amiberry_sdl
cp -R /home/$USER/AmiRock/Amiga/amiberry_sdl /home/$USER/Amiga/amiberry
cp -R /home/$USER/AmiRock/Amiga/amiberry_sdl /home/$USER/Amiga/amiberry_dev
cp -R /home/$USER/AmiRock/Amiga/amiberry_dmx /home/$USER/Amiga/amiberry_dmx

sudo cp -R /home/$USER/AmiRock/config/config3b.txt /boot/config.txt
      
fi
    

fi
 
 

if [ -f /home/$USER/Desktop/AmigaForever9Plus.msi ]; then
AFimport.sh
fi
 
  if [ ! -f /home/$USER/Amiga/kickstarts/amiga-os-310-a1200.rom ]; then
   sudo cp -R /home/$USER/RetroPie/BIOS/MegaAGS-Kickstart.rom /home/$USER/Amiga/kickstarts/kick31a1200.rom
  fi
   
   if [ -f /home/$USER/Amiga/kickstarts/kick31a1200.rom ]; then
       
       if [ -d /OLED/ ]; then
          ClassicWB.sh
       fi
 
      if [ ! -f /home/$USER/Amiga/dir/System_ADVSP/System/T/CWB3.pac ]; then
      install_ClassicWB.sh
      fi
     
      if [ ! -f /home/$USER/Amiga/dir/System_ADVSP/System/T/CWB3.pac ]; then
      install_ClassicWB.sh
      fi
   
      if [ ! -f /home/$USER/Amiga/dir/ClassicWB13/System/T/Science ]; then
      install_ClassicWB.sh
      fi
   
   else
   
   clear
      toilet "AmiRock-OS" --metal
      echo -e "$GREY AmiRock-OS ROM Operating System and Libraries" 
      echo " Version V2.0 2020-2021 AmiRock-OS "
      echo " No Rights Reserved.  "
      echo " "
      echo -e "$BLUE"
      echo " "
    
   fi

if [ ! -f /home/$USER/Amiga/data/amiberry_dev.png ]; then
      sudo cp -R /opt/AmiRock/Amiga/amiberry_dev.png /home/$USER/Amiga/data/
      fi
      

 if [ -d /home/$USER/FS-UAE/Configurations/ ]; then
      #update.sh
     sudo cp -R /opt/AmiRock/config/fs-uae/* /home/$USER/FS-UAE/Configurations/
 fi
 
 if [ -d /home/$USER/pimiga/ ]; then
      #update.sh
     sudo mv /home/$USER/pimiga/ /home/$USER/pimiga3
    
fi    
if [ -d /home/$USER/pimiga3/ ]; then
     
      sudo cp  -rf  /opt/AmiRock/config/Pimiga3.desktop /home/$USER/Desktop/
      sudo cp  -rf  /opt/AmiRock/config/Pimiga3.desktop /usr/share/applications/
      sudo cp  -rf  /opt/AmiRock/config/config/Pimiga3.uae /home/$USER/Amiga/conf/
      sudo cp  -rf  "/opt/AmiRock/Amiga/screenmode.prefs" /home/$USER/pimiga3/disks/System/Prefs/Env-Archive/Sys/screenmode.prefs
      #sudo chmod -R 777 /home/$USER/pimiga15/disks/System/
      clear
      toilet "AmiRock-OS" --metal
      echo -e "$GREY AmiRock-OS ROM Operating System and Libraries" 
      echo " Version V2.0 2020-2021 AmiRock-OS "
      echo " No Rights Reserved.  "
      echo " "
fi     

if [ -d /home/$USER/pimiga/ ]; then
      #update.sh
     sudo mv /home/$USER/pimiga/ /home/$USER/pimiga15
    
fi
if [ -d /home/$USER/pimiga15/ ]; then
     
      sudo cp  -rf  /opt/AmiRock/config/Pimiga1.5.desktop /home/$USER/Desktop/
      sudo cp  -rf  /opt/AmiRock/config/Pimiga1.5.desktop /usr/share/applications/
      sudo cp  -rf  /opt/AmiRock/config/config/Pimiga15.uae /home/$USER/Amiga/conf/
      sudo cp  -rf  "/opt/AmiRock/Amiga/screenmode.prefs" /home/$USER/pimiga15/disks/System/Prefs/Env-Archive/Sys/screenmode.prefs
      #sudo chmod -R 777 /home/$USER/pimiga15/disks/System/
      clear
      toilet "AmiRock-OS" --metal
      echo -e "$GREY AmiRock-OS ROM Operating System and Libraries" 
      echo " Version V2.0 2020-2021 AmiRock-OS "
      echo " No Rights Reserved.  "
      echo " "
fi
if [ -d /home/$USER/pimiga2/ ]; then
      
      sudo cp  -rf  /opt/AmiRock/config/Pimiga20.desktop /home/$USER/Desktop/
      sudo cp  -rf  /opt/AmiRock/config/Pimiga20.desktop /usr/share/applications/
      sudo cp  -rf  /opt/AmiRock/config/Pimiga2.uae /home/$USER/Amiga/conf/
      sudo cp  -rf  /opt/AmiRock/configPimiga2.uae /home/$USER/Amiga/conf/
      sudo cp  -rf  /opt/AmiRock/config/PimigaSS.uae /home/$USER/Amiga/conf/
      sudo cp  -rf  "/opt/AmiRock/config/Games Launcher.uae" /home/$USER/Amiga/conf/
      sudo cp  -rf  "/opt/AmiRock/Amiga/screenmode.prefs" /home/$USER/pimiga2/disks/System/Prefs/Env-Archive/Sys/screenmode.prefs
      #sudo chmod -R 777 /home/$USER/pimiga2/disks/System/
      cd /home/$USER/pimiga2/disks/
      sudo cp  -rf  /opt/AmiRock/Amiga/pm/System.zip /home/$USER/pimiga2/disks/
      unzip -o /home/$USER/pimiga2/disks/System.zip
      rm -rvf /home/$USER/pimiga2/disks/System.zip
      clear
      toilet "AmiRock-OS" --metal
      echo -e "$GREY AmiRock-OS ROM Operating System and Libraries" 
      echo " Version V2.0 2020-2021 AmiRock-OS "
      echo " No Rights Reserved.  "
      echo " "
    
fi   


if [ -d /home/$USER/Amiga/dir/System_P96/ ]; then
      cp -rf /opt/AmiRock/Amiga/ClassicWB/ClassicWB-P96.uae /home/$USER/Amiga/conf/
      sudo cp -rf /opt/AmiRock/config/ClassicWB-P96.desktop /usr/share/applications/
fi

if [ -d /home/$USER/Amiga/dir/System_ADVSP/ ]; then
      cp -rf /opt/AmiRock/Amiga/ClassicWB/ClassicWB-ADVSP.uae /home/$USER/Amiga/conf/
      sudo cp -rf /opt/AmiRock/config/ClassicWB-ADVSP.desktop /usr/share/applications/ 
fi 

if [ "$(getconf LONG_BIT)" == "64" ]; then
      

      sudo cp  -rf  /home/$USER/Amiga/amiberry /home/$USER/Amiga/amiberry_old
      clear
      toilet "AmiRock-OS" --metal
      echo " "
      echo " "
      echo "Raspberry Pi OS 64 bit is running..."
      
      if [ ! -f /opt/Backup/amiberry-v5.5-rpi4-sdl2-64bit-debian.zip ]; then    
      
      cd /home/$USER/Amiga/
      wget https://github.com/BlitterStudio/amiberry/releases/download/v5.5/amiberry-v5.5-rpi4-sdl2-64bit-debian.zip
      unzip -o  /home/$USER/Amiga/amiberry-v5.5-rpi4-sdl2-64bit-debian.zip
      cp -rf /home/$USER/Amiga/amiberry  /home/$USER/Amiga/amiberry_sdl
      sudo cp -rf /home/$USER/Amiga/amiberry-v5.5-rpi4-sdl2-64bit-debian.zip /opt/Backup
      sudo rm -rf /home/$USER/Amiga/amiberry-v5.5-rpi4-sdl2-64bit-debian/
      sudo rm -rf /home/$USER/Amiga/amiberry-v5.5-rpi4-sdl2-64bit-debian.zip
     
      cp -R /home/$USER/AmiRock/Amiga/amiberry64_dmx /home/$USER/Amiga/amiberry_dmx
      cp -R /home/$USER/AmiRock/Amiga/amiberry64_dmx /home/$USER/Amiga/amiberry
      cp -R /home/$USER/AmiRock/Amiga/amiberry64_dev /home/$USER/Amiga/amiberry_dev
     
      
      fi 
      
    else 
      sudo cp  -rf  /home/$USER/Amiga/amiberry /home/$USER/Amiga/amiberry_old
      clear
      toilet "AmiRock-OS" --metal
      echo " "
      echo " "
      echo "Raspberry Pi OS 32 bit is running... "
      
      if [ ! -f /opt/Backup/amiberry-v5.5-rpi4-dmx-32bit-retropie.zip ]; then    
      cd /home/$USER/Amiga/
      
      wget https://github.com/BlitterStudio/amiberry/releases/download/v5.5/amiberry-v5.5-rpi4-dmx-32bit-retropie.zip
      unzip -o  /home/$USER/Amiga/amiberry-v5.5-rpi4-dmx-32bit-retropie.zip
      sudo rm /home/$USER/Amiga/amiberry_sdl
      cp -rf /home/$USER/Amiga/amiberry-v5.5-rpi4-dmx-32bit-retropie/amiberry  /home/$USER/Amiga/amiberry_sdl
      cp -rf /home/$USER/Amiga/amiberry-v5.5-rpi4-dmx-32bit-retropie/*  /home/$USER/Amiga/
      sudo cp -rf /home/$USER/Amiga/amiberry-v5.5-rpi4-dmx-32bit-retropie.zip /opt/Backup
      sudo rm -rf /home/$USER/Amiga/amiberry-v5.5-rpi4-dmx-32bit-retropie
      sudo rm -rf /home/$USER/Amiga/amiberry-v5.5-rpi4-dmx-32bit-retropie.zip
        
      cp -R /home/$USER/AmiRock/Amiga/amiberry32_dmx /home/$USER/Amiga/amiberry_dmx
      cp -R /home/$USER/AmiRock/Amiga/amiberry32_dmx /home/$USER/Amiga/amiberry
      cp -R /home/$USER/AmiRock/Amiga/amiberry32_dev /home/$USER/Amiga/amiberry_dev
      fi 
      
      
   if [ ! -f /home/$USER/Amiga/amiberry_dev ]; then    
      
      cd
      
      sudo apt-get -y install libsdl2-2.0-0 libsdl2-ttf-2.0-0 libsdl2-image-2.0-0 flac mpg123 libmpeg2-4
            sudo apt-get -y install libsdl2-dev libsdl2-ttf-dev libsdl2-image-dev libflac-dev libmpg123-dev libpng-dev libmpeg2-4-dev libraspberrypi-dev
            clear
            Update_Amiberry.sh
            
            echo "AmiRock-OS ROM Operating System and Libraries" 
            echo "Version V1.5 2020-2021 AmiRock-OS "
            echo "No Rights Reserved.  "
            echo -e "$BLUE "
            echo "Compiling Amiberry (DEV)..."
            echo -e "$BLACK "
            cd
            sudo rm -rf amiberry
            git clone -b dev https://github.com/midwan/amiberry
            cd amiberry
	    
           clear
      	   toilet "AmiRock-OS" --metal
      	   echo " "
      	   echo " "
      	   echo "Raspberry Pi OS 32 bit is running... "
      	   echo "rebooting now ..."
      	   make -j4 PLATFORM=rpi3
            sudo chmod -R 777 /home/$USER/amiberry
            cp -rf /home/$USER/amiberry/amiberry  /home/$USER/Amiga/amiberry_dev
	    
	    # Backup
	    
	    cp -rf  /home/$USER/Amiga/amiberry_dev /opt/Backup
   fi        
   if [ ! -f /opt/Backup/amiberry ]; then    
	    
	    cd
            sudo rm -rf amiberry
            git clone https://github.com/midwan/amiberry
            cd amiberry
	    	   

        	clear
      		toilet "AmiRock-OS" --metal
      		echo " "
      		echo " "
      		echo "Raspberry Pi OS 32 bit is running... "
      		
      		make -j4 PLATFORM=rpi3
   	    
       
            sudo chmod -R 777 /home/$USER/amiberry
            cp -rf /home/$USER/Amiga/amiberry  /home/$USER/Amiga/amiberry_old
            cp -rf /home/$USER/amiberry/amiberry  /home/$USER/Amiga/amiberry
	    cp -rf /home/$USER/amiberry/amiberry  /home/$USER/Amiga/amiberry_dmx
	    
	  
	    cp -rf  /home/$USER/Amiga/amiberry /opt/Backup/
            cp -rf  /home/$USER/Amiga/amiberry_old /opt/Backup/
	
            cd
            sudo rm -rf amiberry
   
       fi 
	    
           
            sudo chmod -R 777 /home/$USER/amiberry
            cp -rf /home/$USER/amiberry/amiberry  /home/$USER/Amiga/amiberry_dev
	    
	    # Backup
	  
	 
	    
            cd
            sudo rm -rf amiberry
      
       
      
fi    

            cp -rf  /home/$USER/Amiga/amiberry_old /opt/Backup/
            cp -rf  /home/$USER/Amiga/amiberry /opt/Backup/
	    cp -rf  /home/$USER/Amiga/amiberry_dev /opt/Backup/
	    cp -rf  /home/$USER/Amiga/amiberry_dmx /opt/Backup /

    clear
      toilet "AmiRock-OS" --metal
      echo -e "$GREY AmiRock-OS ROM Operating System and Libraries" 
      echo " Version V2.0 2020-2021 AmiRock-OS "
      echo " No Rights Reserved.  "
      echo " "
      echo -e "$BLUE"
      echo " "
      echo "  ... repair settings  "  
      
      sudo rm -rf /home/$USER/.bashrc
      cp -rf /opt/AmiRock/scripts/.bashrc /home/$USER/.bashrc
   
      
      if [ ! -f /home/$USER/Desktop/AmiRock-OS.desktop ]; then
        sudo cp -rf /usr/share/applications/AmiRock-OS.desktop /home/$USER/Desktop/AmiRock-OS.desktop
      fi  
      
      if [ ! -f /home/$USER/Desktop/CLI.desktop ]; then
        sudo cp -rf /usr/share/applications/CLI.desktop /home/$USER/Desktop/CLI.desktop
      fi 
      
      if [ ! -f /usr/share/applications/MegaAGS.desktop ]; then
      
      sudo cp -rf /opt/AmiRock/config/MegaAGS.desktop /usr/share/applications/ 
      
      clear
      toilet "AmiRock-OS" --metal
      echo -e "$GREY AmiRock-OS ROM Operating System and Libraries" 
      echo " Version V2.0 2020-2021 AmiRock-OS "
      echo " No Rights Reserved.  "
      echo " "
      
      fi
      sudo cp -rf /opt/AmiRock/config/MegaAGS.desktop /usr/share/applications/ 
      #cd
      #unzip -u -o /opt/AmiRock/Amiga/Amiga.zip
      

	   
     
     if [ -d /home/$USER/Documents/FS-UAE/Configurations/ ]; then
      #update.sh
     sudo cp -R /opt/AmiRock/config/fs-uae/* /home/$USER/Documents/FS-UAE/Configurations/
     fi     
  
      if [ ! -d /home/$USER/Documents/ ]; then
      mkdir /home/$USER/Documents/
      fi
      echo " "
      echo "  ... cleanup Amiga folder  " 
      sudo chmod -R 777 /home/$USER/Amiga
      echo " "
      echo "  ... delete unnecessary files  " 
      cd ~
      sudo find . -name "\._*" -type f -print0 | xargs -0 /bin/rm -f
      sudo find . -name "\.DS_*" -type f -print0 | xargs -0 /bin/rm -f
      cd /home/$USER/Amiga/
      sudo find . -name "_UAEFSDB.___" -type f -print0 | xargs -0 /bin/rm -f
      cd ~
      #sudo rm -rf ~/.cache/
      sudo rm -rf ~/AmiRock-OS
      sudo rm -rf ~/Templates/*
      cp -rf  /opt/Backup/amiberry_dev /home/$USER/Amiga
 

      echo " "
      echo "  ... repair rights  "         
    
      
      sudo chmod -R 777 /usr/local/bin/
      sudo chmod -R 777 /home/$USER/.config/
      sudo chmod -R 777 /home/$USER/.local/
      sudo chmod -R 777 /home/$USER/Amiga/
      sudo chmod -R 777 /home/$USER/Desktop/
      sudo chmod -R 777 /usr/share/applications/
      
      echo " "
      echo "  ... finish setup  " 
         
      
      # Dissable Services
       if [  -f /etc/systemd/pstore.conf ]; then
        sudo systemctl disable apt-daily-upgrade.service 
	sudo systemctl disable apt-daily-upgrade.timer
	sudo systemctl disable apt-daily.service
	sudo systemctl disable apt-daily.timer
	sudo systemctl disable cups
     	sudo systemctl disable rsyslog.service.
	sudo systemctl disable syslog.socket
	sudo systemctl disable service webmin
        sudo systemctl disable glamor-test.service
	sudo systemctl disable man-db.service 
	sudo systemctl disable man-db.timer
	sudo systemctl disable plymouth-reboot.service 
	sudo systemctl disable plymouth-start.service 
	sudo systemctl disable alsa-restore.service at boot time
	sudo systemctl disable alsa-state.service at boot time    
        sudo update-rc.d motd remove
	sudo rm -rf /etc/systemd/pstore.conf
       	sudo rm -rf /etc/systemd/journald.conf
       	sudo rm -rf /etc/systemd/system/network-online.target.wants/
       	sudo rm -rf /etc/systemd/system/syslog.service
       	sudo rm -rf /etc/systemd/system/lo*
       	sudo rm -rf /etc/systemd/system/cu*
       	sudo rm -rf /etc/systemd/system/plymouth-start.service
       	sudo rm -rf /etc/systemd/system/multi-user.target.wants/cu*
       	sudo rm -rf /etc/systemd/system/multi-user.target.wants/rsyslog.service
       	sudo rm -rf /etc/systemd/system/printer.target.wants/
      fi
	
		if [ -d /OLED/ ]; then
		AmiRock-OS.sh
		fi
 clear
      toilet "AmiRock-OS" --metal
      echo -e "$BLUE AmiRock-OS ROM Operating System and Libraries" 
      echo " Version V2.0 2020-2021 AmiRock-OS "
      echo " No Rights Reserved.  "
      echo -e "$BLACK "	
		
     	
if  xset q &>/dev/null; then
      BLACK='\033[0;39m'
      BLUE='\033[1;34m'
      GREEN='\033[1;32m'
      RED='\033[1;31m'
      GREY='\033[1;30m'
clear
      toilet "AmiRock-OS" --metal
      echo -e "$BLUE AmiRock-OS ROM Operating System and Libraries" 
      echo " Version V2.0 2020-2021 AmiRock-OS "
      echo " No Rights Reserved.  "
      echo -e "$BLACK "
      echo " Type 'd' to boot into Kick-OS Workbench"
      echo ""
      echo " 1.>  "
      echo -e " 1.>  ( a ) Start Amiga                   *Amiberry*" 
      echo " 1.>  ( d ) AmiRock Desktop                          " 
      echo -e " 1.>  ( e ) Emulationstation              *RetroPie*" 
      echo " 1.>  ( r ) Emulationstation Setup                  "
      echo -e "$GREEN 1.>  ( u ) AmiRock-OS Update                        "
      echo -e "$BLACK 1.>  ( m ) AmiRock-OS Config                        " 
      echo -e " 1.>  ( c ) Raspi-Config                            "
      echo " 1.>  ( s ) Shutdown                                 "  
      echo ""
      
else 
   toilet "AmiRock-OS" --metal
      echo -e "$BLUE AmiRock-OS ROM Operating System and Libraries" 
      echo " Version V2.0 2020-2021 AmiRock-OS "
      echo " No Rights Reserved.  "
      echo -e "$BLACK "
      echo " Type 'd' to boot into Kick-OS Workbench"
      echo ""
      echo " 1.>  "
      echo -e " 1.>  ( a ) Start Amiga                   *Amiberry*" 
      echo " 1.>  ( d ) AmiRock Desktop                          " 
      echo -e " 1.>  ( e ) Emulationstation              *RetroPie*" 
      echo " 1.>  ( r ) Emulationstation Setup                  "
      echo -e "$GREEN 1.>  ( u ) AmiRock-OS Update                        "
      echo -e "$BLACK 1.>  ( m ) AmiRock-OS Config                        " 
      echo -e " 1.>  ( c ) Raspi-Config                            "
      echo " 1.>  ( s ) Shutdown                                 "  

startx
fi
