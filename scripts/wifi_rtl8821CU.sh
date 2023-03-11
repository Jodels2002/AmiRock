
#Please download the driver from this link:
#http://www.redbirdtek.com/wp-content/uploads/2018/09/5.Linux_rtl8821CU_WiFi_linux_v5.4.1_29192.20180816_COEX20180516-2e2e.tar.gz

#tar zxvf 5.Linux_rtl8821CU_WiFi_linux_v5.4.1_29192.20180816_COEX20180516-2e2e.tar.gz
#make
#make install
#-------------------------------
#Also,You can get the source code from github:

git clone https://github.com/whitebatman2/rtl8821CU.git
cd rtl8821CU
make
sudo make install
sudo modprobe 8821cu
#-------------------------------
#If wifi dongle can't be detected, please switch usb mode by these steps in terminal:

#lsusb (find USB PID/VID,for example:"0bda:1a2b")
#sudo usb_modeswitch -KW -v 0bda -p 1a2b (switch usb mode)

