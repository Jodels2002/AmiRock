#! /usr/bin/python3
# -*- coding: utf-8 -*-
import sys
import math
import random
import time
from pathlib import Path
from operator import itemgetter
from luma.core.interface.serial import i2c
from luma.core.sprite_system import spritesheet, framerate_regulator
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


def main(num_iterations=sys.maxsize):
    data = {
        'image': str(Path(__file__).resolve().parent.joinpath('images', 'runner.png')),
        'frames': {
            'width': 64,
            'height': 67,
            'regX': 0,
            'regY': 2
        },
        'animations': {
            'run-right': {
                'frames': range(19, 9, -1),
                'next': "run-right",
            },
            'run-left': {
                'frames': range(0, 10),
                'next': "run-left"
            }
        }
    }

    regulator = framerate_regulator()
    sheet = spritesheet(**data)
    runner = sheet.animate('run-right')
    x = -sheet.frames.width
    dx = 3

    while num_iterations > 0:
        with regulator:
            num_iterations -= 1

            background = Image.new(device.mode, device.size, "white")
            background.paste(next(runner), (x, 0))
            device.display(background)
            x += dx

            if x >= device.width:
                runner = sheet.animate('run-left')
                dx = -dx

            if x <= -sheet.frames.width:
                runner = sheet.animate('run-right')
                dx = -dx


if __name__ == "__main__":
    try:
        
        main()
    except KeyboardInterrupt:
        pass
