#!/bin/bash
# Install KickPi-OS
# B.Titze 2023
BLACK='\033[0;39m'
BLUE='\033[1;34m'
GREEN='\033[1;32m'
RED='\033[1;31m'
clear

 
     echo "AmiRock OS 64 bit is running..."
     

HEIGHT=40
WIDTH=75
CHOICE_HEIGHT=8
BACKTITLE="Main"
TITLE="AmiRock-OS ROM Operating System"
MENU="Version 3.1:"

OPTIONS=(d -"  Back to AmiRock Desktop                      "
         i "Download & Install ClassicWB                    "
	 m "Download & Install MegaAGS 2022                 "
	 v "Download & Install AmigaVision (MegaAGS 2023)   "
	 w "Download & Install WHDL Games&Demos             "
	 o "Install OLED                                    "
         u "Update AmiRock-OS                               "
         n "Update Amiberry                                 "
         p "Update Amiberry (DEV)                           "
         c "Armbian-config                                  "
         s "Shutdown                                        ")
        

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
            echo "Armbian-config"
            sudo armbian-config
            ;; 
                 
         s)
             #***********************************************  #AmiRock-OS install script  ***********************************
             #************************************************  Shootdown    **************************************
            clear
            s
            ;; 
         o)
             #***********************************************  #AmiRock-OS install script  ***********************************
             #************************************************  Install OLED SSD1306    **************************************
            clear
                cd

		git clone --depth=1 https://github.com/Jodels2002/Rock5b_SSD1308.git
		sudo chmod -R 775 Rock5b_SSD1308
		cd Rock5b_SSD1308
		./setup.sh		
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
            #update
            clear
            ags
            ;;  
	    
	   v)
            #update
            clear
            vision
            ;;  
	    
	   w)
            #update
            clear
            whd
            ;; 
	    
	    q)
            #update
            clear
            wine msiexec /i "$(zenity --file-selection)"
            ;;  
	    
               
            
          n)
       
              #***********************************************  #AmiRock-OS install script  ***********************************
              #************************************************  Compile Amiberry         ************************************** 
            clear
             sudo apt install -y cmake libsdl2-2.0-0 libsdl2-ttf-2.0-0 libsdl2-image-2.0-0 flac mpg123 libmpeg2-4 libserialport0 libportmidi0
	     sudo apt install -y cmake libsdl2-dev libsdl2-ttf-dev libsdl2-image-dev libflac-dev libmpg123-dev libpng-dev libmpeg2-4-dev libserialport-dev libportmidi-dev          
	    clear
            
           clear
      		toilet "AmiRock" --metal
      		echo " "
      		echo " "
       		echo "Compiling now ...Amiberry :-)"

            sudo rm -rf amiberry
            git clone https://github.com/midwan/amiberry
            cd amiberry
             cmake -B build && cmake --build build
	     
     	    #make -j8 PLATFORM=rk3588
            
	    sudo chmod -R 777 $HOME/amiberry-lite
	    sudo chmod -R 777 /usr/share/plymouth/
	    mkdir $HOME/Amiga/
            cp -rf $HOME/Amiga/amiberry-lite  $HOME/Amiga/amiberry_old
            cp -rf $HOME/amiberry/*  $HOME/Amiga/
             sudo rm -rf $HOME/amiberry-lite
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
            cp -rf  $HOME/Amiga/amiberry-lite /opt/Backup
	    cp -rf  $HOME/Amiga/amiberry_dev /opt/Backup
	    cp -rf  $HOME/Amiga/data/amiberry.png /usr/share/applications/ 
             
	
            cd
            sudo rm -rf amiberry
           
            ;;  
       
       p)
           #***********************************************  #AmiRock-OS install script  ***********************************
           #************************************************  Compile Amiberry DEV        ************************************** 
	     sudo apt install -y cmake libsdl2-2.0-0 libsdl2-ttf-2.0-0 libsdl2-image-2.0-0 flac mpg123 libmpeg2-4 libserialport0 libportmidi0
	     sudo apt install -y cmake libsdl2-dev libsdl2-ttf-dev libsdl2-image-dev libflac-dev libmpg123-dev libpng-dev libmpeg2-4-dev libserialport-dev libportmidi-dev   
		clear
      		toilet "AmiRock" --metal
      		echo " "
      		echo " "
       		echo "Compiling now ...Amiberry :-)"

            sudo rm -rf amiberry
            git clone -b preview https://github.com/midwan/amiberry
            cd amiberry

                 cmake -B build && cmake --build build
		 # make -j8 PLATFORM=rk3588
		
            sudo chmod -R 777 $HOME/amiberry
	    sudo chmod -R 777 /usr/share/plymouth/
	   
            cp -rf $HOME/amiberry/amiberry  $HOME/Amiga/amiberry_dev
	    cp -rf $HOME/Amiga/amiberry_dev $HOME/Amiga/amiberry_dev_old
	    sudo rm -rf $HOME/amiberry/amiberry
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
	    cp -rf  $HOME/Amiga/data/amiberry_dev.png /usr/share/applications/
	    cp -rf  $HOME/AmiRock/amiberry_dev.png $HOME/Amiga/data/
            cp -rf  $HOME/Amiga/data/amiberry_dev.png /usr/share/applications/
	    
            cd
            sudo rm -rf amiberry
         
            ;;  
            
                               255) echo "[ESC] key pressed.";;
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
