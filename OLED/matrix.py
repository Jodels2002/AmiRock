#! /usr/bin/python3
# -*- coding: utf-8 -*-
import sys
import math
import random
from pathlib import Path
from operator import itemgetter
from random import randint, gauss
from luma.core.interface.serial import i2c
from luma.core.sprite_system import framerate_regulator
from luma.core.render import canvas
from luma.oled.device import sh1106, ssd1306
from PIL import ImageFont, ImageDraw
import time

from PIL import Image
from PIL import ImageDraw
from PIL import ImageFont
import subprocess



serial = i2c(port=0, address=0x3C)
device = ssd1306(serial)

# top = 0
# width = 128
# height = 64

def matrix(device):
	
	# Time s in sec*********************************************************************
    s = 15
    
    wrd_rgb = [
        (154, 173, 154),
        (0, 255, 0),
        (0, 235, 0),
        (0, 220, 0),
        (0, 185, 0),
        (0, 165, 0),
        (0, 128, 0),
        (0, 0, 0),
        (154, 173, 154),
        (0, 145, 0),
        (0, 125, 0),
        (0, 100, 0),
        (0, 80, 0),
        (0, 60, 0),
        (0, 40, 0),
        (0, 0, 0)
    ]

    clock = 0
    blue_pilled_population = []
    max_population = device.width * 8
    regulator = framerate_regulator(fps=10)

    def increase_population():
        blue_pilled_population.append([randint(0, device.width), 0, gauss(1.2, 0.6)])
    
    
    
    x = s * 10
    for t in range ( x ):
        clock += 1
        with regulator:
            with canvas(device, dither=True) as draw:
                for person in blue_pilled_population:
                    x, y, speed = person
                    for rgb in wrd_rgb:
                        if 0 <= y < device.height:
                            draw.point((x, y), fill=rgb)
                        y -= 1
                    person[1] += speed

        if clock % 5 == 0 or clock % 3 == 0:
            increase_population()

        while len(blue_pilled_population) > max_population:
            blue_pilled_population.pop(0)

def main():
    
        matrix( device )
    
        
        
if __name__ == "__main__":
    try:
          main()
    except KeyboardInterrupt:
        pass

