#!/bin/bash
# Install KickPi-OS
# B.Titze 2020

clear
if [ "$(getconf LONG_BIT)" == "64" ]; then
 
     echo "Raspberry Pi OS 64 bit is running..."
     
#******************************************** #KickPi-OS 64 Start Menu ******************************************
#****************************************************************************************************************

HEIGHT=35
WIDTH=70
CHOICE_HEIGHT=8
BACKTITLE="Main"
TITLE="KickPi-OS 64 bit"
MENU="Boot select:"

OPTIONS=(d "Boot to KickPi-OS Desktop"
         a "Boot to Amiga  (Amiberry)"
         c "Boot to Console          "
         u "Update KickPi-OS         "
         n "Update Amiberry          "
         m "Import Pimiga            "  
         s "Shutdown                 ")
        

CHOICE=$(dialog --clear \
                --backtitle "$BACKTITL" \
                --title "$TITLE" \
                --menu "$MENU" \
                $HEIGHT $WIDTH $CHOICE_HEIGHT \
                "${OPTIONS[@]}" \
                2>&1 >/dev/tty)
                
   
       
    else 
    #******************************************** #KickPi-OS 32bit Start Menu ***************************************
    #****************************************************************************************************************

HEIGHT=35
WIDTH=70
CHOICE_HEIGHT=8
BACKTITLE="Main"
TITLE="KickPi-OS 32 bit"
MENU="Boot select:"

OPTIONS=(d "Boot to KickPi-OS Desktop"
         a "Boot to Amiga  (Amiberry)"
         c "Boot to Console          "
         u "Update KickPi-OS         "
         n "Update Amiberry          "
         s "Shutdown                 ")
        
        

CHOICE=$(dialog --clear \
                --backtitle "$KickPi-OS 32 bitS" \
                --title "$TITLE" \
                --menu "$MENU" \
                $HEIGHT $WIDTH $CHOICE_HEIGHT \
                "${OPTIONS[@]}" \
                2>&1 >/dev/tty)
fi    

cd ~

clear
toilet -F gay KickPi-OS

case $CHOICE in
        
        #1)
        #clear
        #toilet -F gay Amiberry
        #cd /home/$USER/Amiga
        # ./amiberry
     
 
        #    ;;
        
        d)
          # KickPi-OS Desktop
            clear
            toilet "KickPi-OS" --metal
            sudo rm /etc/profile.d/kick.sh
            sudo raspi-config nonint do_boot_behaviour B4
            
            ;;
        
                   
         a)
            clear
            toilet "Amiberry" --metal
             sudo cp -rf /home/$USER/.KickPi-OS/config/kick.sh /etc/profile.d/kick.sh
             sudo chmod -R 777 /etc/profile.d/kick.sh
             sudo raspi-config nonint do_boot_behaviour B2
             echo " "
             echo " "
             echo "System reboots to Amiga" 
             echo " "
             echo "Rebooting now..."
             sleep 7s
             reboot
            ;;
         
            
          c)
            #console
            clear
            toilet "KickPi-OS" --metal
            sudo rm /etc/profile.d/kick.sh
            sudo raspi-config nonint do_boot_behaviour B2
            echo " "
            echo " "
            echo "System reboots next time to command line" 
            echo " "
            ;; 
                 
        
         s)
            #shutdown
            clear
            s
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
            
          n)
            #update
            clear
            amiberryup.sh
            ;;  
            
esac


clear
toilet "KickPi-OS" --metal
cd /usr/local/bin/
