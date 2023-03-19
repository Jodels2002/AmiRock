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



wine msiexec /i "$(zenity --file-selection)"
