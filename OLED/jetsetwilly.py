import sys
import math
import random
import time
import datetime
import psutil
from pathlib import Path
from operator import itemgetter
from luma.core.interface.serial import i2c
from luma.core.sprite_system import framerate_regulator
from luma.core.sprite_system import spritesheet, framerate_regulator
from luma.core.render import canvas
from luma.oled.device import sh1106, ssd1306
from luma.core.virtual import viewport, snapshot
from PIL import Image, ImageSequence, ImageDraw, ImageFont 
from luma.core.image_composition import ImageComposition, ComposableImage 
from hotspot import memory, uptime, cpu_load, clock, network, disk
import subprocess



serial = i2c(port=0, address=0x3C)
device = sh1106(serial)

top = 0
width = 128
height = 64

def main(num_iterations=sys.maxsize):
    data = {
        'image': str(Path(__file__).resolve().parent.joinpath(
            'images', f'jsw_{device.mode}.gif')
        ),
        'frames': {
            'width': 16,
            'height': 16,
            'regX': 0,
            'regY': 0
        },
        'animations': {
            'willy-right': {
                'frames': [8, 9, 10, 11],
                'next': "willy-right"
            },
            'willy-left': {
                'frames': [15, 14, 13, 12],
                'next': "willy-left"
            },
            'maria': {
                'frames': [4, 5, 4, 5, 4, 5, 4, 4, 4, 4, 4, 4, 6, 7, 7, 7, 6],
                'next': "maria",
                'speed': 0.5
            },
            'saw-left': {
                'frames': [191] * 128 + [56, 57, 58, 59] * 3,
                'next': "saw-left",
                'speed': 0.5
            },
            'hare-left': {
                'frames': [111, 110, 109, 108],
                'next': 'hare-left',
            }
        }
    }

    sheet = spritesheet(**data)
    regulator = framerate_regulator(fps=10)

    maria = sheet.animate('maria')
    willy = sheet.animate('willy-right')
    saw = sheet.animate('saw-left')
    hare = sheet.animate('hare-left')

    wx = 24
    hx = device.width
    clock = 0
    dx = 8

    while num_iterations > 0:
        with regulator:
            num_iterations -= 1

            background = Image.new(device.mode, device.size)
            background.paste(next(maria), (0, 0))
            background.paste(next(saw), (64, 0))
            background.paste(next(willy), (wx, 0))
            background.paste(next(hare), (hx, device.height - 16))
            device.display(background)
            clock += 1

            if clock % 4 == 0:
                wx += dx
                hx += -8

                if wx >= device.width - sheet.frames.width:
                    willy = sheet.animate('willy-left')
                    dx = -dx
                    wx = device.width - 24

                if wx <= 16:
                    willy = sheet.animate('willy-right')
                    dx = -dx
                    wx = 24

                if hx + sheet.frames.width <= 0:
                    hx = device.width


if __name__ == "__main__":
    try:
     
        main()
    except KeyboardInterrupt:
        pass
