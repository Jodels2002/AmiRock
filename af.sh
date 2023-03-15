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
cp -rf /home/$USER/AmiRock/config/bashrc /home/$USER/
sudo apt purge lightdm -y
sudo apt purge gnome -y


  
  
