# Copyright (c) 2017 Adafruit Industries
# Author: Tony DiCola & James DeVito
#
# Permission is hereby granted, free of charge, to any person obtaining a copy
# of this software and associated documentation files (the "Software"), to deal
# in the Software without restriction, including without limitation the rights
# to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
# copies of the Software, and to permit persons to whom the Software is
# furnished to do so, subject to the following conditions:
#
# The above copyright notice and this permission notice shall be included in
# all copies or substantial portions of the Software.
#
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
# AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
# OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
# THE SOFTWARE.

import time
import Adafruit_GPIO.SPI as SPI
import Adafruit_SSD1306
from PIL import Image
from PIL import ImageDraw
from PIL import ImageFont
import subprocess

RST = None     
DC = 23
SPI_PORT = 0
SPI_DEVICE = 0
disp = Adafruit_SSD1306.SSD1306_128_64(rst=RST)
 
disp.begin()
disp.clear()
disp.display()
# ********************************************************
# *************  Variables  ******************************
# ********************************************************
x = 0
top = 0
width = disp.width
height = disp.height

font = ImageFont.load_default()
fontm = ImageFont.truetype('Display.ttf', 12)
font2 = ImageFont.truetype('default.ttf', 14)
font_icon = ImageFont.truetype('default.ttf', 20)
font_text_small = ImageFont.truetype('Display.ttf', 12)
# ********************************************************

image = Image.new('1', (width, height))
draw = ImageDraw.Draw(image)
draw.rectangle((0,0,width,height), outline=0, fill=0)
draw = ImageDraw.Draw(image)

while True:
	
	
	
# *************  Draw Monitor  ******************************
    
    draw.rectangle((0,0,width,height), outline=0, fill=0)

    cmd = "hostname -I | cut -d\' \' -f1 | head --bytes -1"
    IP = subprocess.check_output(cmd, shell = True )

    cmd = "top -bn1 | grep load | awk '{printf \"CPU %.2f\", $(NF-2)}'"
    CPU = subprocess.check_output(cmd, shell = True )
    
    cmd = "free -m | awk 'NR==2{printf \"%.2f%%\", $3*100/$2 }'"
    MemUsage = subprocess.check_output(cmd, shell = True )
    
    cmd = "df -h | awk '$NF==\"/\"{printf \"HDD: %d/%dGB %s\", $3,$2,$5}'"
    cmd = "df -h | awk '$NF==\"/\"{printf \"%s\", $5}'"
    Disk = subprocess.check_output(cmd, shell = True )
    
    cmd = "vcgencmd measure_temp |cut -f 2 -d '='"
    Temperature = subprocess.check_output(cmd, shell = True )
    
   
    # Icon Wifi
    draw.text((x+0, top+2), chr(61931),  font=font2, fill=200)
    # Text IP addresss  
    draw.text((x+24, top+2),      str(IP,'utf-8'),  font=font_text_small, fill=200)
     
    # Icon disk
    draw.text((x, top+20), chr(61888),  font=font2, fill=255)
    # Text Disk usage  
    draw.text((x+18, top+20),   str(Disk,'utf-8'),  font=fontm, fill=255) 
    
    # Text cpu usage  
    draw.text((x+60, top+20),      str(CPU,'utf-8'), font=fontm, fill=255)
  
    # Icon temperator
    draw.text((x, top+40),    chr(62152),  font=font_icon, fill=255)
    # Text temperatur 
    draw.text((x+18, top+40), str(Temperature,'utf-8'),  font=fontm, fill=255)
    
    # Icon memory
    draw.text((x+60, top+40), chr(62171),  font=font_icon, fill=255)
    # Text mem usage  
    draw.text((x+80, top+40),    str(MemUsage,'utf-8'),  font=fontm, fill=255)
    
  # Display Monitor.
    disp.image(image)
    disp.display()
    time.sleep(12)
    
   # *************  Draw Pimiga Logo  ******************************
   
    # Display Logo till next cronjob
    image = Image.open('Amiberry.pbm').convert('1')
    draw = ImageDraw.Draw(image)
    disp.image(image)
    disp.display()
    time.sleep(8)
    
    # Display Logo till next cronjob
    image = Image.open('AmigaLogo.pgm').convert('1')
    draw = ImageDraw.Draw(image)
    disp.image(image)
    disp.display()
    time.sleep(.4)
    
    
    End = subprocess.check_output(cmd, False )
   
