#!/bin/bash
# Install AmiRock
# B.Titze 2023


BLACK='\033[0;39m'
BLUE='\033[1;34m'
GREEN='\033[1;32m'
RED='\033[1;31m'
GREY='\033[1;30m'

sudo rm -rf /home/$USER/.cache/*


export DISTRO=focal-stable
wget -O - apt.radxa.com/$DISTRO/public.key | sudo apt-key add -
echo performance | sudo tee /sys/bus/cpu/devices/cpu[046]/cpufreq/scaling_governor /sys/class/devfreq/dmc/governor /sys/class/devfreq/fb000000.gpu/governor
sudo apt update -y



      sudo cp -f -R /home/$USER/AmiRock/scripts/* /usr/local/bin
      sudo cp -f -R /home/$USER/AmiRock/ /opt
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
#************************************************  Graphic Driver        **************************************   
      
 
  clear
      		toilet "AmiRock" --metal
         
    
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

      sudo cp -f -R /home/$USER/AmiRock/scripts/* /usr/local/bin
      sudo cp -f -R /home/$USER/AmiRock/ /opt
      sudo chmod -R 777 /usr/local/bin
      sudo chmod -R 777 /opt/AmiRock/


 
