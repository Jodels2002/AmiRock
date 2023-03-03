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
TITLE="KickPI-OS ROM Operating System"
MENU="Version 3.1:"

OPTIONS=(d "Boot to AmiRock  Desktop     "
         i "Install ClassicWB             "
         m "Import Pimiga 1.5 / 2.0       "  
         u "UpdateAmiRock                 "
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
            #console
            clear
            toilet "Armbian-config" --metal
            sudo armbian-config
            ;; 
                 
         s)
            #shutdown
            clear
            s
            ;; 
                        
         i)
            
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
            Pimiga-imp.sh
            ;;  
            

                  255) echo "[ESC] key pressed.";;
                           esac
            ;;  
            
          n)
            #update
            clear
           
            sudo apt-get -y install libsdl2-2.0-0 libsdl2-ttf-2.0-0 libsdl2-image-2.0-0 flac mpg123 libmpeg2-4
            sudo apt-get -y install libsdl2-dev libsdl2-ttf-dev libsdl2-image-dev libflac-dev libmpg123-dev libpng-dev libmpeg2-4-dev libraspberrypi-dev
            clear
            
            echo "AmiRock-OS ROM Operating System and Libraries" 
            echo "Version V1.5 2020-2021 KickPi-OS "
            echo "No Rights Reserved.  "
            echo -e "$BLUE "
            echo "Compiling Amiberry..."
            echo -e "$BLACK "
            cd
            sudo rm -rf amiberry
            git clone https://github.com/midwan/amiberry
            cd amiberry
	    
      		clear
      		toilet "AmiRock" --metal
      		echo " "
      		echo " "
      		echo "Raspberry Pi OS 64 bit is running..."
      		echo "Compiling now ..."
      
     		make -j4 PLATFORM=rk3588
    

	    
	    
       
            sudo chmod -R 777 /home/$USER/amiberry
            cp -rf /home/pi/Amiga/amiberry  /home/pi/Amiga/amiberry_old
            cp -rf /home/$USER/amiberry/amiberry  /home/pi/Amiga/amiberry
	    
	    # Backup
	    mkdir /opt/KickPi-OS/Backup
	    cp -rf  /home/pi/Amiga/amiberry_old /opt/KickPi-OS/Backup
            cp -rf  /home/pi/Amiga/amiberry /opt/KickPi-OS/Backup
	    cp -rf  /home/pi/Amiga/amiberry_dev /opt/KickPi-OS/Backup
	    cp -rf  /home/pi/Amiga/amiberry_dmx /opt/KickPi-OS/Backup
            cd
            sudo rm -rf amiberry
           
            ;;  
       
       o)
            #update
            sudo apt-get -y install libsdl2-2.0-0 libsdl2-ttf-2.0-0 libsdl2-image-2.0-0 flac mpg123 libmpeg2-4
            sudo apt-get -y install libsdl2-dev libsdl2-ttf-dev libsdl2-image-dev libflac-dev libmpg123-dev libpng-dev libmpeg2-4-dev libraspberrypi-dev
            clear
     
            
            echo "KickPI-OS ROM Operating System and Libraries" 
            echo "Version V1.5 2020-2021 KickPi-OS "
            echo "No Rights Reserved.  "
            echo -e "$BLUE "
            echo "Compiling Amiberry (DEV)..."
            echo -e "$BLACK "
            cd
            sudo rm -rf amiberry
            git clone -b dev https://github.com/midwan/amiberry
            cd amiberry
	    

      	clear
      	toilet "KickPi-OS" --metal
      	echo " "
      	echo " "
      	echo "Raspberry Pi OS 64 bit is running..."
      	echo "Compiling now ..."
      
       make -j4 PLATFORM=rk3588
    
   
	    
           
            sudo chmod -R 777 /home/$USER/amiberry
            cp -rf /home/$USER/amiberry/amiberry  /home/pi/Amiga/amiberry_dev
	    
	    
	    # Backup
	 
	    cp -rf  /home/pi/Amiga/amiberry_old /opt/Backup
            cp -rf  /home/pi/Amiga/amiberry /opt/Backup
	    cp -rf  /home/pi/Amiga/amiberry_dev /opt/Backup
	    cp -rf  /home/pi/Amiga/amiberry_dmx /opt/Backup
	    
            cd
            sudo rm -rf amiberry
         
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
