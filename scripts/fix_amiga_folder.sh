#!/bin/bash
# Install AmiRock fix_amiga_folder
# B.Titze 2023

BLACK='\033[0;39m'
BLUE='\033[1;34m'
GREEN='\033[1;32m'
RED='\033[1;31m'
GREY='\033[1;30m'

cd
	     sudo rm -rf /opt/Amiga
       sudo mkdir /opt/
	     sudo mkdir /opt/Amiga
	     sudo chmod -R 777 /opt/
	     #sudo ln -s /opt/Amiga/ Amiga
             unzip -u  /opt/AmiRock/Amiga/Amiga.zip
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
      
      
            clear
      toilet "AmiRock-OS" --metal
      echo " "
      echo " "
      echo "  First installation "
      echo " "
      
      cd 

  
	sudo ln -s /opt/vc/lib/libbcm_host.so /usr/lib/aarch64-linux-gnu/libbcm_host.so.0
  
  AmiKickme.sh
