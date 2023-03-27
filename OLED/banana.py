#! /usr/bin/python3
# -*- coding: utf-8 -*-
import sys
import math
import random
import time
from pathlib import Path
from operator import itemgetter
from luma.core.interface.serial import i2c
from luma.core.sprite_system import framerate_regulator
from luma.core.render import canvas
from luma.oled.device import sh1106, ssd1306
from PIL import ImageFont, ImageDraw
from PIL import Image, ImageSequence
from PIL import Image
from PIL import ImageDraw
from PIL import ImageFont
import subprocess


serial = i2c(port=0, address=0x3C)
device = sh1106(serial)

top = 0
width = 128
height = 64

def main():
    regulator = framerate_regulator(fps=10)
    img_path = str(Path(__file__).resolve().parent.joinpath('images', 'banana.gif'))
    banana = Image.open(img_path)
    size = [min(*device.size)] * 2
    posn = ((device.width - size[0]) // 2, device.height - size[1])

    while True:
        for frame in ImageSequence.Iterator(banana):
            with regulator:
                background = Image.new("RGB", device.size, "black")
                background.paste(frame.resize(size, resample=Image.LANCZOS), posn)
                device.display(background.convert(device.mode))
if __name__ == "__main__":
    try:
     
        main()
    except KeyboardInterrupt:
        pass
