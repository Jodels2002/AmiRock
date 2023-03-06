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
         m "Reset Amiga Folder            "  
         u "Update AmiRock-OS             "
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
            echo "Armbian-config"
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
             #************************************************ Reset Amiga       ************************************** 
            clear
	     sudo rm -rf $HOME/Amiga
             unzip -u  /opt/AmiRock/Amiga/Amiga.zip
	      clear
      toilet "AmiRock-OS" --metal
      echo " "
      echo " "
      echo "  Reset Amiga Folder! "
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
	 sudo rm -rf $HOME/Amiga/conf/amiberry.conf
	 sudo rm -rf $HOME/Amiga/conf/amiberry-osx.conf
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
	    cp -rf  $HOME/Amiga/data/amiberry.png /usr/share/applications/ 
             
	
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
