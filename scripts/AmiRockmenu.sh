#!/bin/bash
# Install KickPi-OS
# B.Titze 2023

clear

 
     echo "AmiRock OS 64 bit is running..."
     

clear

BLACK='\033[0;39m'
BLUE='\033[1;34m'
GREEN='\033[1;32m'
RED='\033[1;31m'

HEIGHT=35
WIDTH=70
CHOICE_HEIGHT=8
BACKTITLE="Main"
TITLE="AmiRock-OS ROM Operating System"
MENU="Version 3.1:"

OPTIONS=(d "Boot to AmiRock  Desktop     "
         i "Install ClassicWB             "
         m "Import Pimiga 1.5 / 2.0       "  
         u "Update AmiRock-OS                 "
         n "Update Amiberry               "
         o "Update Amiberry (DEV)         "
         c "Armbian-config                "
         s "Shutdown                      ")
        

CHOICE=$(dialog --clear \
                --backtitle "$BACKTITL" \
                --title "$TITLE" \
                --menu "$MENU" \
                $HEIGHT $WIDTH $CHOICE_HEIGHT \
                "${OPTIONS[@]}" \
                2>&1 >/dev/tty)
                
   
       
   

cd ~

clear


case $CHOICE in
        
          c)
           #***********************************************  #AmiRock-OS install script  ***********************************
             #************************************************  Armbian-config    **************************************
            clear
            toilet "Armbian-config" --metal
            sudo armbian-config
            ;; 
                 
         s)
             #***********************************************  #AmiRock-OS install script  ***********************************
             #************************************************  Shootdown    **************************************
            clear
            s
            ;; 
                        
         i)
             #***********************************************  #AmiRock-OS install script  ***********************************
             #************************************************  Install ClassicWB     **************************************
            clear
            
            install_ClassicWB.sh
            aktivate.sh
            ;; 
            
                        
         u)
            #update
            clear
            u
            ;;  
            
          m)
             #***********************************************  #AmiRock-OS install script  ***********************************
             #************************************************  Import Pimiga        ************************************** 
            clear
            Pimiga-imp.sh
            ;;  
	    
      
            
          n)
       
              #***********************************************  #AmiRock-OS install script  ***********************************
              #************************************************  Compile Amiberry         ************************************** 
            clear
           
            sudo apt-get -y install libsdl2-2.0-0 libsdl2-ttf-2.0-0 libsdl2-image-2.0-0 flac mpg123 libmpeg2-4
            sudo apt-get -y install libsdl2-dev libsdl2-ttf-dev libsdl2-image-dev libflac-dev libmpg123-dev libpng-dev libmpeg2-4-dev libraspberrypi-dev
            clear
            
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
	    sudo chmod -R 777 /usr/share/plymouth/
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
	    mkdir /opt/KickPi-OS/Backup
	    
	    # Backup
	 
	    cp -rf  $HOME/Amiga/amiberry_old /opt/Backup
            cp -rf  $HOME/Amiga/amiberry /opt/Backup
	    cp -rf  $HOME/Amiga/amiberry_dev /opt/Backup
	
            cd
            sudo rm -rf amiberry
           
            ;;  
       
       o)
           #***********************************************  #AmiRock-OS install script  ***********************************
           #************************************************  Compile Amiberry DEV        **************************************   
	   clear
      		toilet "AmiRock" --metal
      		echo " "
      		echo " "
       		echo "Compiling now ...Amiberry :-)"

            sudo rm -rf amiberry
            git clone -b dev https://github.com/midwan/amiberry
            cd amiberry


     		make -j4 PLATFORM=rk3588
		
            sudo chmod -R 777 $HOME/amiberry
	    sudo chmod -R 777 /usr/share/plymouth/
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
	    # Backup
	 
	    cp -rf  $HOME/Amiga/amiberry_old /opt/Backup
            cp -rf  $HOME/Amiga/amiberry /opt/Backup
	    cp -rf  $HOME/Amiga/amiberry_dev /opt/Backup
	
	    
            cd
            sudo rm -rf amiberry
         
            ;;  
            
                               255) echo "[ESC] key pressed.";;
                           esac
            ;;  
esac


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
echo ""
