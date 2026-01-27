 #!/bin/bash
# Install AmiRock
# B.Titze 2023


BLACK='\033[0;39m'
BLUE='\033[1;34m'
GREEN='\033[1;32m'
RED='\033[1;31m'
GREY='\033[1;30m'



sudo apt-get update -y
sudo apt-get -y upgrade



sudo apt install software-properties-common -y


sudo cp -f -R ~/AmiRock/scripts/* /usr/local/bin
sudo cp -f -R ~/AmiRock/ /opt
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

#************************************************  usefull Tools        **************************************  
sudo apt install -y dialog mc zip unzip wget toilet ksnip
sudo apt install -y gparted ntfs-3g nemo feh
sudo apt install build-essential -y
sudo apt install arqiver geany -y
sudo apt install 7zip -y
sudo apt purge -y raspberrypi-ui-mods 
sudo apt purge -y xser* xor* xin*
sudo apt purge -y gnome*


	
	sudo rm -rf ~/.config/
 
	sudo apt install -y gnome-com*
	sudo apt install -y xserver-xorg xfce4 xfce4-goodies lxinput xini* 
	sudo apt install -y xfce4-te*
	sudo apt install -y chromium-b*
	sudo apt install -y firefox-esr
    sudo apt install -y worker
    sudo apt install -y xdms
    sudo apt install -y unadf
    sudo apt install -y fonts-amiga
      sudo apt install -y mc zip unzip
      sudo apt install -y gparted
      sudo apt install -y mednaffe
         
     
      sudo apt install -y git usbmount 
      sudo apt install -y geany geany-plugins-common geany-common xmlstarlet
      
     
     
      clear
      toilet "KickPi-OS" --metal

      echo " "
      echo " "
      echo "Some little Amiga stuff...."
      echo " "
      sudo apt-get -y install grafx2
      sudo apt-get -y install worker 
      clear
      toilet "KickPi-OS" --metal
      echo " "
      echo " "
      cd /home/$USER
      git clone --depth=1 https://github.com/rewtnull/amigafonts
      sudo cp -rf /home/$USER/amigafonts/ttf/* /usr/share/fonts/truetype/
	

clear
#sudo apt install -y synaptic 

clear
sudo apt install autofs -y
clear




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



#***********************************************  #AmiRock-OS install script  ***********************************
#************************************************  Amiga        ************************************** 
cd
if [ ! -d /opt/Amiga/dir/ ]; then
sudo rm -rf /opt/Amiga

sudo mkdir /opt/Amiga
sudo ln -s /opt/Amiga/ Amiga

sudo mkdir ~/Amiberry
cd ~/Amiberry
sudo ln -s /opt/Amiga/conf/ conf

cd /opt/
unzip -u  /opt/AmiRock/Amiga/Amiga.zip
clear
toilet "AmiRock-OS" --metal
echo " "
echo " "
echo "  First installation "
echo " "

sudo rm -rf /opt/Amiga/conf/amiberry.conf
sudo rm -rf /opt/Amiga/conf/amiberry-osx.conf





fi
clear

toilet "AmiRock-OS" --metal
echo " "
echo " "
echo "  First installation "
echo " "
cd 
unzip -u  ~/config/worker.zip

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
git clone --depth=1 https://github.com/rewtnull/amigafonts
sudo cp -rf ~/amigafonts/ttf/* /usr/share/fonts/truetype/
sudo rm -rf ~/amigafonts/
sudo rm -rf /opt/Amiga/conf/am*



clear
toilet "AmiRock-OS" --metal
echo " "
echo " "
echo "  First installation "
echo " "
#sudo ln -s /opt/vc/lib/libbcm_host.so /usr/lib/aarch64-linux-gnu/libbcm_host.so.0



#***********************************************  #AmiRock-OS install script  ***********************************
#************************************************  Amiga Desktop        ************************************** 
clear
toilet "AmiRock-OS" --metal
echo " "
echo " "
echo "  First installation "
echo " "





cd /usr/share/icons
sudo cp -rf ~/AmiRock/config/AMIGAOSLINUX.zip /usr/share/icons
sudo unzip -u  /usr/share/icons/AMIGAOSLINUX.zip

sudo rm -rf /usr/share/icons/default
sudo cp -rf /usr/share/icons/AMIGAOSLINUX/ /usr/share/icons/default/
clear
toilet "AmiRock-OS" --metal
echo " "
echo " "
echo "  First installation "
echo " "
cd ~/AmiRock/
git clone --depth=1 https://github.com/x64k/amitk
clear
sudo cp -rf ~/AmiRock/amitk /usr/share/themes
sudo cp -rf ~/AmiRock/config/Logo/* /usr/share/

clear
toilet "AmiRock-OS" --metal
echo " "
echo " "
echo "  First installation "
echo " "

sudo rm -rf /usr/share/backgrounds/u*
sudo rm -rf /usr/share/backgrounds/j*
sudo rm -rf /usr/share/backgrounds/J*
sudo rm -rf /usr/share/backgrounds/w*
sudo rm -rf /usr/share/backgrounds/o*
sudo rm -rf /usr/share/backgrounds/Ch*
sudo rm -rf /usr/share/backgrounds/B*
cd

#***********************************************  #AmiRock-OS Not Afterburner  ***********************************     

clear
toilet "AmiRock-OS" --metal
echo " "
echo " "
echo "  First installation"
echo " "



cd $HOME/AmiRock/
git clone --depth=1 https://github.com/lordwolfchild/amigaos_xfwm4_themes
clear

sudo cp -rf ~/AmiRock/amigaos_xfwm4_themes/* /usr/share/themes/
sudo rm -rf /usr/share/themes/Default/xfwm4/
sudo cp -rf /usr/share/themes/Amiga3.x_hidpi/* /usr/share/themes/Default/xfwm4/
sudo cp -rf $HOME/AmiRock/config/rpd-wallpaper/Commodore/* /usr/share/backgrounds/
cd



#***********************************************  #AmiRock-OS install script  ***********************************

if [ ! -d /opt/Backup/ ]; then

mkdir /opt/Backup/
mkdir /opt/Backup/config/
cp -rf /etc/lightdm/ /opt/Backup/config/

fi     



#************************************************ End First run        **************************************   		

sudo apt install -y libreoffice  

sudo apt purge gnome-terminal -y
sudo apt purge nautilus nautilus-action -y
sudo apt install xfce4-terminal -y
sudo apt purge terminator -y

cp -rf /home/$USER/AmiRock/scripts/bashrc /home/$USER/.bashrc
sudo usermod -a -G root rock
sudo rm -rf $HOME/.config/dconf/*
sudo cp -rf $HOME/AmiRock/config/user $HOME/.config/dconf/
sudo apt-get autoremove -y

sudo chmod -R 775 /usr/share/plymouth/
sudo rm -rf /usr/share/plymouth/themes/spinner/watermark.png
sudo cp -rf /opt/AmiRock/config/Logo/Amiga-Logo.png /usr/share/plymouth/themes/spinner/watermark.png
sudo cp -rf /opt/AmiRock/config/Logo/Amiga-Logo.png /usr/share/plymouth/ubuntu-logo.png
sudo cp -rf /opt/AmiRock/config/plymouth/AmigaKickstart /usr/share/plymouth/themes/
sudo update-alternatives --install /usr/share/plymouth/themes/default.plymouth default.plymouth /usr/share/plymouth/themes/spinner/spinner.plymouth 500

clear
toilet "Afterburner" --metal
echo " "
echo " "
echo "  Extended "
echo " "
sudo update-initramfs -u


# sudo ln -s /home/rock/ /home/pi
sudo echo "bootlogo=true" >> /boot/armbianEnv.txt
sudo echo "overlays=rk3588-i2c0-m1" >> /boot/armbianEnv.txt
  clear
      # Update is running
      sudo apt install -y gimp 
      clear
      toilet "KickPi-OS" --metal

      echo " "
      echo " "
      toilet -F gay PhotoGimp
       
      curl -L "https://github.com/Diolinux/PhotoGIMP/releases/download/1.0/PhotoGIMP.by.Diolinux.v2020.for.Flatpak.zip" -o /home/$USER/KickPi-OS/PhotoGIMP.zip && unzip /home/$USER/KickPi-OS/PhotoGIMP.zip -d /home/$USER/KickPi-OS/ 
      sudo cp -R /home/$USER/KickPi-OS/PhotoGIMP\ by\ Diolinux\ v2020\ for\ Flatpak/.var/app/org.gimp.GIMP/config/* ~/.config
      echo " PhotoGimp by Diolinux installed..."
      


#************************************************ End First run        **************************************   	     
cd


sudo cp -f -R /home/$USER/AmiRock/scripts/* /usr/local/bin
sudo cp -f -R /home/$USER/AmiRock/ /opt
sudo chmod -R 777 /usr/local/bin
sudo chmod -R 777 /opt/AmiRock/  
sudo apt -y autoremove
#sudo ln -s /opt/vc/lib/libbcm_host.so /usr/lib/aarch64-linux-gnu/libbcm_host.so.0

~/AmiRock/scripts/AmiKickme.sh
