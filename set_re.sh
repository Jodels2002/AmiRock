#!/bin/bash
# Install AmiRock
# B.Titze 2023


BLACK='\033[0;39m'
BLUE='\033[1;34m'
GREEN='\033[1;32m'
RED='\033[1;31m'
GREY='\033[1;30m'

sudo rm -rf ~/.cache/*
      
      sudo update-locale LANG=en_US.UTF-8
      setxkbmap -option grp:switch,grp:alt_shift_toggle,grp_led:scroll us,gb,de,fr,it,gr,dk
      sudo echo "pi ALL=(ALL) NOPASSWD: ALL" | sudo tee -a /etc/sudoers
      
sudo systemctl disable getty@tty1.service

sudo tee /etc/systemd/system/autologin@.service > /dev/null <<EOT
[Unit]
Description=Autologin to console as %I
After=getty.target
[Service]
ExecStart=-/sbin/agetty --autologin pi --noclear %I 38400 linux
[Install]
WantedBy=multi-user.target
EOT
sudo systemctl daemon-reload
sudo systemctl enable autologin@tty1.service
echo "Autologin enabled for user pi"
sudo apt-get update -y

#************************************************  usefull Tools        **************************************  
 
  sudo apt install -y dialog mc zip unzip wget toilet 
  sudo apt install arqiver geany -y
  sudo apt-get -y install pulseaudio p7zip-full
  sudo apt install -y pulseaudio-*
  sudo apt install -y pavucontrol
  sudo apt install -y csound-u*
  sudo apt install -y ntfs-3g 
  #sudo apt install autofs -y
  #sudo apt install -y autoconf 
  sudo apt install -y build-essential 
  sudo apt install libegl-mesa0 libegl1-mesa-dev libgbm-dev libgl1-mesa-dev libgles2-mesa-dev libglx-mesa0 mesa-common-dev mesa-vulkan-drivers -y  
        wget https://archive.raspberrypi.org/debian/pool/main/r/raspi-config/raspi-config_20230214_all.deb
	sudo dpkg -i raspi-config_20230214_all.deb
	rm -rf raspi-config_20230214_all.deb    
	sudo apt-get -y install pi-bluetooth
	sudo apt-get -y install bluez bluez-firmware baobab 
	sudo usermod -G bluetooth -a pi
        sudo usermod -G audio -a pi
        sudo usermod -G video -a pi  
	      
      sudo update-locale LANG=en_US.UTF-8
      setxkbmap -option grp:switch,grp:alt_shift_toggle,grp_led:scroll us,gb,de,fr,it,gr,dk
      sudo echo "pi ALL=(ALL) NOPASSWD: ALL" | sudo tee -a /etc/sudoers
      
sudo systemctl disable getty@tty1.service

sudo tee /etc/systemd/system/autologin@.service > /dev/null <<EOT
[Unit]
Description=Autologin to console as %I
After=getty.target
[Service]
ExecStart=-/sbin/agetty --autologin pi --noclear %I 38400 linux
[Install]
WantedBy=multi-user.target
EOT
sudo systemctl daemon-reload
sudo systemctl enable autologin@tty1.service
echo "Autologin enabled for user pi"
sudo apt-get update -y

#************************************************  usefull Tools        **************************************  
 
  sudo apt install -y dialog mc zip unzip wget toilet 
  sudo apt install arqiver geany -y
  sudo apt-get -y install pulseaudio p7zip-full
  sudo apt install -y pulseaudio-*
  sudo apt install -y pavucontrol
  sudo apt install -y csound-u*
  sudo apt install -y ntfs-3g 
  #sudo apt install autofs -y
  #sudo apt install -y autoconf 
  sudo apt install -y build-essential 
  sudo apt install libegl-mesa0 libegl1-mesa-dev libgbm-dev libgl1-mesa-dev libgles2-mesa-dev libglx-mesa0 mesa-common-dev mesa-vulkan-drivers -y  
        wget https://archive.raspberrypi.org/debian/pool/main/r/raspi-config/raspi-config_20230214_all.deb
	sudo dpkg -i raspi-config_20230214_all.deb
	rm -rf raspi-config_20230214_all.deb    
	sudo apt-get -y install pi-bluetooth
	sudo apt-get -y install bluez bluez-firmware baobab 
	sudo usermod -G bluetooth -a pi
        sudo usermod -G audio -a pi
        sudo usermod -G video -a pi  
	      
      sudo update-locale LANG=en_US.UTF-8
      setxkbmap -option grp:switch,grp:alt_shift_toggle,grp_led:scroll us,gb,de,fr,it,gr,dk
      sudo echo "pi ALL=(ALL) NOPASSWD: ALL" | sudo tee -a /etc/sudoers
      
sudo systemctl disable getty@tty1.service

sudo tee /etc/systemd/system/autologin@.service > /dev/null <<EOT
[Unit]
Description=Autologin to console as %I
After=getty.target
[Service]
ExecStart=-/sbin/agetty --autologin pi --noclear %I 38400 linux
[Install]
WantedBy=multi-user.target
EOT
sudo systemctl daemon-reload
sudo systemctl enable autologin@tty1.service
echo "Autologin enabled for user pi"
sudo apt-get update -y

#************************************************  usefull Tools        **************************************  
 
  sudo apt install -y dialog mc zip unzip wget toilet ksnip
  sudo apt install arqiver geany -y
  sudo apt-get -y install pulseaudio p7zip-ful
  sudo apt install 7zip -y
  sudo apt install build-essential -y
  sudo apt install -y pulseaudio-*
  sudo apt install -y pavucontrol
  sudo apt install -y csound-u*
  sudo apt install -y gparted ntfs-3g nemo
  sudo apt install autofs -y
  sudo apt install -y autoconf 
  sudo apt install -y build-essential 
  sudo apt install libegl-mesa0 libegl1-mesa-dev libgbm-dev libgl1-mesa-dev libgles2-mesa-dev libglx-mesa0 mesa-common-dev mesa-vulkan-drivers -y  
        wget https://archive.raspberrypi.org/debian/pool/main/r/raspi-config/raspi-config_20230214_all.deb
	sudo dpkg -i raspi-config_20230214_all.deb
	rm -rf raspi-config_20230214_all.deb    
	sudo apt-get -y install pi-bluetooth
	sudo apt-get -y install bluez bluez-firmware baobab 
	sudo usermod -G bluetooth -a pi
  sudo usermod -G audio -a pi
  sudo usermod -G video -a pi  
	
  

 #************************************************  Install Desktop       **************************************   
        sudo apt install -y xserver-xorg xini* 
	#sudo apt install -y xfce4-te* xfce4 xfce4-goodies lxinput
	#sudo apt install -y chromium gparted
export DISTRO=focal-stable
wget -O - apt.radxa.com/$DISTRO/public.key | sudo apt-key add -
echo performance | sudo tee /sys/bus/cpu/devices/cpu[046]/cpufreq/scaling_governor /sys/class/devfreq/dmc/governor /sys/class/devfreq/fb000000.gpu/governor
sudo apt update -y
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
      
     
      
#***********************************************  #AmiRock-OS install script  ***********************************
#************************************************  Graphic Driver        **************************************   
      
 
  clear
      		toilet "AmiRock" --metal
         
 if [  -d /usr/lib/armbian/ ]; then       
          
  cd /lib/firmware/
  sudo apt install build-essential meson git python3-mako libexpat1-dev bison flex libwayland-egl-backend-dev libxext-dev libxfixes-dev libxcb-glx0-dev libxcb-shm0-dev libxcb-dri2-0-dev libxcb-dri3-dev libxcb-present-dev libxshmfence-dev libxxf86vm-dev libxrandr-dev -y
  sudo wget https://github.com/JeffyCN/rockchip_mirrors/blob/libmali/firmware/g610/mali_csffw.bin
  cd
sudo add-apt-repository ppa:liujianfeng1994/panfork-mesa -y
#sudo add-apt-repository ppa:liujianfeng1994/rockchip-multimedia -y

sudo apt update -y
sudo apt dist-upgrade -y
sudo apt-get autoremove -y
sudo apt install mali-g610-firmware -y
sudo apt install malirun -y

#sudo apt install glmark2 glmark2-es2 glmark2-es2-wayland -y
sudo apt install mesa-utils -y
#sudo apt install kodi -y

else
  sudo dpkg -i --force-overwrite /opt/AmiRock/config/deb/linux-gpu-mali-wayland_1.1-g6p0-20230406_arm64.deb 

fi     
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




#***********************************************  #AmiRock-OS install script  ***********************************
#************************************************  Amiga        ************************************** 
cd
	     sudo rm -rf /opt/Amiga
	     sudo mkdir /opt/Amiga
	     sudo ln -s /opt/Amiga/ Amiga
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
      
      sudo apt install worker unadf xdms fonts-amiga -y
      sudo apt install -y libsdl2-2.0-0 libsdl2-ttf-2.0-0 libsdl2-image-2.0-0 flac mpg123 libmpeg2-4 libserialport0
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
      sudo ln -s /opt/vc/lib/libbcm_host.so /usr/lib/aarch64-linux-gnu/libbcm_host.so.0
	    
	

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
      if [ ! -d /home/rock/wine/share/wine ]; then
        clear
      toilet "AmiRock-OS" --metal
      echo " "
      echo " "
      echo "  First installation"
      echo " "
      
      
      sudo rm -rf ~/.config/
      unzip -o  $HOME/AmiRock/config/config.zip
      cd $HOME/AmiRock/
      git clone --depth=1 https://github.com/lordwolfchild/amigaos_xfwm4_themes
      clear

      sudo cp -rf ~/AmiRock/amigaos_xfwm4_themes/* /usr/share/themes/
      sudo rm -rf /usr/share/themes/Default/xfwm4/
      sudo cp -rf /usr/share/themes/Amiga3.x_hidpi/* /usr/share/themes/Default/xfwm4/
      sudo cp -rf $HOME/AmiRock/config/rpd-wallpaper/Commodore/* /usr/share/backgrounds/
cd

      else
      
      sudo rm -rf ~/.config/dconf/
      sudo cp -rf ~/AmiRock/config/user $HOME/.config/dconf/
            
fi

#***********************************************  #AmiRock-OS install script  ***********************************
 
     if [ ! -d /opt/Backup/ ]; then
     
      mkdir /opt/Backup/
      mkdir /opt/Backup/config/
      cp -rf /etc/lightdm/ /opt/Backup/config/

      fi     

      
	
#************************************************ End First run        **************************************   		

if [  -d /usr/lib/armbian/ ]; then
          clear
      toilet "Afterburner" --metal
      echo " "
      echo " "
      echo "  Extendet"
      echo " "
	
	 cd
	
         sudo apt purge gnome-terminal -y
	 sudo apt purge nautilus nautilus-action -y
	 sudo apt install xfce4-terminal -y
	 sudo apt purge terminator -y
	
	 cp -rf /home/$USER/AmiRock/scripts/bashrc /home/$USER/.bashrc
	 sudo usermod -a -G root rock
	 #sudo rm -rf $HOME/.config/
         #unzip -u  $HOME/AmiRock/config/afconfig.zip
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
	 
	 
	 sudo ln -s /home/rock/ /home/pi
	 sudo echo "bootlogo=true" >> /boot/armbianEnv.txt
	 sudo echo "overlays=rk3588-i2c0-m1" >> /boot/armbianEnv.txt
	 fi
	
	 sudo ln -s /opt/vc/lib/libbcm_host.so /usr/lib/aarch64-linux-gnu/libbcm_host.so.0
 #************************************************ End First run        **************************************   	     
 
  cp -rf /opt/AmiRock/retropie/Retropie.desktop /usr/share/applications/ 
  ~/AmiRock/scripts/AmiKickme.sh
 

      
