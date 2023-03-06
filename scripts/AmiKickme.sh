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
      sudo chmod -R 777 /home/$USER/AmiRock
      sudo chmod -R 777 /opt/Backup/
      sudo cp -R /home/$USER/AmiRock/scripts/* /usr/local/bin
      
    
      sudo rm -rf /usr/share/applications/*Ami*
      sudo cp -R /home/$USER/AmiRock/config/Desktop/* /usr/share/applications/
      sudo cp -rf $HOME/AmiRock/config/Logo/* /opt/AmiRock/config/
     
     
      clear
      toilet "AmiRock-OS" --metal
      echo -e "$GREY AmiRock-OS ROM Operating System and Libraries" 
      echo " Version V2.0 2020-2021 AmiRock-OS "
      echo " No Rights Reserved.  "
      echo " "
      
    
           
      if [ ! -d /home/$USER/.config/autostart/ ]; then
      echo " Create Autostart "
      mkdir /home/$USER/.config/autostart/
      fi
      #sudo cp -rf $HOME/AmiRock/config/Keyboard.desktop /home/$USER/.config/autostart/
      	
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
       sudo chmod -R 777 /usr/share/plymouth/
       sudo cp -rf  /opt/AmiRock/config/AmiRock-OS.png /usr/share/plymouth/themes/armbian/bgrt-fallback.png
       #cp -rf  /home/pi/Amiga/data/amiberry-logo.png /usr/share/plymouth/themes/armbian/watermark.png
       
      

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
       


 if [ ! -d /boot/dietpi/func/ ]; then
      sudo cp -R $HOME/AmiRock/config/dietpi-banner /boot/dietpi/func/dietpi-banner
      fi
	

if [ -f /home/$USER/Desktop/AmigaForever9Plus.msi ]; then
AFimport.sh
fi
 
  if [ ! -f /home/$USER/Amiga/kickstarts/amiga-os-310-a1200.rom ]; then
   sudo cp -R /home/$USER/RetroPie/BIOS/MegaAGS-Kickstart.rom /home/$USER/Amiga/kickstarts/kick31a1200.rom
  fi
   
   if [ -f /home/$USER/Amiga/kickstarts/kick31a1200.rom ]; then
       
    
 
      if [ ! -f /home/$USER/Amiga/dir/System_ADVSP/System/T/CWB3.pac ]; then
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
      sudo cp -R $HOME/AmiRock/Amiga/amiberry_dev.png /home/$USER/Amiga/data/
      fi
      

 if [ -d /home/$USER/FS-UAE/Configurations/ ]; then
      #update.sh
     sudo cp -R $HOME/AmiRock/config/fs-uae/* /home/$USER/FS-UAE/Configurations/
 fi
 
 if [ -d /home/$USER/pimiga/ ]; then
      #update.sh
     sudo mv /home/$USER/pimiga/ /home/$USER/pimiga3
    
fi    
if [ -d /home/$USER/pimiga3/ ]; then
     
      sudo cp  -rf  $HOME/AmiRock/config/Pimiga3.desktop /home/$USER/Desktop/
      sudo cp  -rf  $HOME/AmiRock/config/Pimiga3.desktop /usr/share/applications/
      sudo cp  -rf  $HOME/AmiRock/config/config/Pimiga3.uae /home/$USER/Amiga/conf/
      sudo cp  -rf  "$HOME/AmiRock/Amiga/screenmode.prefs" /home/$USER/pimiga3/disks/System/Prefs/Env-Archive/Sys/screenmode.prefs
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
     
      sudo cp  -rf  $HOME/AmiRock/config/Pimiga1.5.desktop /home/$USER/Desktop/
      sudo cp  -rf  $HOME/AmiRock/config/Pimiga1.5.desktop /usr/share/applications/
      sudo cp  -rf  $HOME/AmiRock/config/config/Pimiga15.uae /home/$USER/Amiga/conf/
      sudo cp  -rf  "$HOME/AmiRock/Amiga/screenmode.prefs" /home/$USER/pimiga15/disks/System/Prefs/Env-Archive/Sys/screenmode.prefs
      #sudo chmod -R 777 /home/$USER/pimiga15/disks/System/
      clear
      toilet "AmiRock-OS" --metal
      echo -e "$GREY AmiRock-OS ROM Operating System and Libraries" 
      echo " Version V2.0 2020-2021 AmiRock-OS "
      echo " No Rights Reserved.  "
      echo " "
fi
if [ -d /home/$USER/pimiga2/ ]; then
      
      sudo cp  -rf  $HOME/AmiRock/config/Pimiga20.desktop /home/$USER/Desktop/
      sudo cp  -rf  $HOME/AmiRock/config/Pimiga20.desktop /usr/share/applications/
      sudo cp  -rf  $HOME/AmiRock/config/Pimiga2.uae /home/$USER/Amiga/conf/
      sudo cp  -rf  $HOME/AmiRock/configPimiga2.uae /home/$USER/Amiga/conf/
      sudo cp  -rf  $HOME/AmiRock/config/PimigaSS.uae /home/$USER/Amiga/conf/
      sudo cp  -rf  "$HOME/AmiRock/config/Games Launcher.uae" /home/$USER/Amiga/conf/
      sudo cp  -rf  "$HOME/AmiRock/Amiga/screenmode.prefs" /home/$USER/pimiga2/disks/System/Prefs/Env-Archive/Sys/screenmode.prefs
      #sudo chmod -R 777 /home/$USER/pimiga2/disks/System/
      cd /home/$USER/pimiga2/disks/
      sudo cp  -rf  $HOME/AmiRock/Amiga/pm/System.zip /home/$USER/pimiga2/disks/
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
      cp -rf $HOME/AmiRock/Amiga/ClassicWB/ClassicWB-P96.uae /home/$USER/Amiga/conf/
      sudo cp -rf $HOME/AmiRock/config/ClassicWB-P96.desktop /usr/share/applications/
fi

if [ -d /home/$USER/Amiga/dir/System_ADVSP/ ]; then
      cp -rf $HOME/AmiRock/Amiga/ClassicWB/ClassicWB-ADVSP.uae /home/$USER/Amiga/conf/
      sudo cp -rf $HOME/AmiRock/config/ClassicWB-ADVSP.desktop /usr/share/applications/ 
fi 


   
    
   cp -rf  $HOME/Amiga/data/amiberry_dev.png /usr/share/applications/
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
      
       
      
   
            if [ ! -f /home/$USER/Amiga/amiberry_old ]; then
            cp -rf  /home/$USER/Amiga/amiberry_old /opt/Backup/
	    fi
	    if [ ! -f /home/$USER/Amiga/amiberry ]; then
            cp -rf  /home/$USER/Amiga/amiberry /opt/Backup/
	    fi
	    if [ ! -f /home/$USER/Amiga/amiberry_dev ]; then
	    cp -rf  /home/$USER/Amiga/amiberry_dev /opt/Backup/
	    fi
	    
	    if [ ! -f /home/$USER/Amiga/kickstarts/A1200.rom ]; then
	    
	             clear
      toilet "AmiRock-OS" --metal
      echo " "
      echo " "
      echo "  First installation "
      echo " " 

      echo "1>Please note that the Kickroms and Workbench files are still under copyright!  "
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
   cd  
      	git clone --depth=1 https://github.com/archtaurus/RetroPieBIOS.git
      	
      	sudo chmod -R 777 $HOME/RetroPieBIOS
      
         
      	cp -rf $HOME/RetroPieBIOS/BIOS/kick34005.A500 /home/$USER/Amiga/kickstarts/A500.rom
      	cp -rf $HOME/RetroPieBIOS/BIOS/kick40063.A600 /home/$USER/Amiga/kickstarts/A600.rom
      	cp -rf $HOME/RetroPieBIOS/BIOS/kick40068.A1200 /home/$USER/Amiga/kickstarts/A1200.rom
	cp -rf $HOME/RetroPieBIOS/BIOS/kick40068.A1200 /home/$USER/Amiga/kickstarts/kick31a1200.rom
	
      	sudo rm -rf /home/$USER/RetroPieBIOS    
 fi

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
      cp -rf $HOME/AmiRock/scripts/.bashrc /home/$USER/.bashrc
   
      
      if [ ! -f /home/$USER/Desktop/AmiRock-OS.desktop ]; then
        sudo cp -rf /usr/share/applications/AmiRock-OS.desktop /home/$USER/Desktop/AmiRock-OS.desktop
      fi  
      
      
      if [ ! -f /usr/share/applications/MegaAGS.desktop ]; then
      
      sudo cp -rf $HOME/AmiRock/config/MegaAGS.desktop /usr/share/applications/ 
      
      clear
      toilet "AmiRock-OS" --metal
      echo -e "$GREY AmiRock-OS ROM Operating System and Libraries" 
      echo " Version V2.0 2020-2021 AmiRock-OS "
      echo " No Rights Reserved.  "
      echo " "
      
      fi

  
     
     if [ -d /home/$USER/Documents/FS-UAE/Configurations/ ]; then
      #update.sh
     sudo cp -R $HOME/AmiRock/config/fs-uae/* /home/$USER/Documents/FS-UAE/Configurations/
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
      
     
      
      if [ -d $HOME/AMIGAOSLINUX/ ]; then
         sudo rm -rf $HOME/AMIGAOSLINUX/
      fi
      
      if [ -d $HOME/AmiRock/ ]; then
         sudo rm -rf $HOME/AmiRock/
      fi
      
      if [ -d $HOME/fan-control-rock5b/ ]; then
         sudo rm -rf $HOME/fan-control-rock5b/
      fi
      
      if [ ! -d $HOME/Amiga/data/amiberry_dev.png/ ]; then
      sudo cp -rf  /opt/AmiRock/Amiga/amiberry_dev.png $HOME/Amiga/data/
      fi



      echo " "
      echo "  ... repair rights  "         
    
      
      sudo chmod -R 777 /usr/local/bin/
      sudo chmod -R 777 /home/$USER/.config/
      sudo chmod -R 777 /home/$USER/.local/
      sudo chmod -R 777 /home/$USER/Amiga/
      sudo chmod -R 777 /home/$USER/Desktop/
      sudo chmod -R 777 /usr/share/applications/
      sudo rm -rf ~/AmiRock
  
cd
		
clear
toilet "AmiRock" --metal
echo -e "$BLUE AmiRock-OS ROM Operating System and Libraries" 
echo " Version V2.0 2020-2021 KickPi-OS "
echo " No Rights Reserved.  "
echo -e "$BLACK "
echo " Type 'd' to boot into AmiRock Workbench"
echo ""
echo " 1.>  "
echo -e " 1.>  ( u ) AmiRock-OS Update                     "
echo " 1.>  ( m ) ArmRock-OS Config                       " 
echo -e " 1.>  ( c ) Armbian-Config                       "
echo " 1.>  ( s ) Shutdown                                "  
echo -e "$BLUE "
echo "  ... finished AmiRock setup :-)  " 
echo -e "$BLACK "
m
          
