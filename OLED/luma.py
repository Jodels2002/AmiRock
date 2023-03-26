#! /usr/bin/python3
# -*- coding: utf-8 -*-

from luma.core.interface.serial import i2c
from luma.core.render import canvas
from luma.oled.device import sh1106, ssd1306
from PIL import ImageFont, ImageDraw
import time

from PIL import Image
from PIL import ImageDraw
from PIL import ImageFont
import subprocess

serial = i2c(port=0, address=0x3C)
device = sh1106(serial)

top = 0
width = 128
height = 64



oled_font = ImageFont.truetype('bodoni.ttf', 18)
with canvas(device) as draw:
    draw.rectangle(device.bounding_box, outline = "white", fill = "white")
    draw.text((10, 10), "Hallo Welt!", font = oled_font, fill = "black")
    draw.text((10, 30), "RockPi5", font = oled_font, fill = "black")

time.sleep(10)

with canvas(device) as draw:
    draw.rectangle(device.bounding_box, outline = "black", fill = "black")
    draw.text((10, 10), "Hallo Welt!", font = oled_font, fill = "white")
    draw.text((10, 30), "RockPi5", font = oled_font, fill = "white")

time.sleep(10)
