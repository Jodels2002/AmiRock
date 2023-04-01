import sys
import math
import random
import time
import datetime
from pathlib import Path
from operator import itemgetter
from luma.core.interface.serial import i2c
from luma.core.sprite_system import framerate_regulator
from luma.core.render import canvas
from luma.oled.device import sh1106, ssd1306
from luma.core.virtual import viewport
from PIL import Image, ImageSequence, ImageDraw, ImageFont  

import subprocess



serial = i2c(port=0, address=0x3C)
device = ssd1306(serial)

top = 0
width = 128
height = 64

blurb = """


   Radxa
   Rock 5b


"""


def main():
    img_path = str(Path(__file__).resolve().parent.joinpath('images', 'Amiberry.pbm'))
    logo = Image.open(img_path)

    virtual = viewport(device, width=device.width, height=200)

    for _ in range(2):
        with canvas(virtual) as draw:
            draw.text((0, 0), "Welcome to AmiRock", fill="white")
            draw.text((0, 12), "powered by", fill="white")
            draw.text((0, 24), "Amiberry....", fill="white")

    time.sleep(3)

    for _ in range(2):
        with canvas(virtual) as draw:
            draw.bitmap((0, 0), logo, fill="white")
            for i, line in enumerate(blurb.split("\n")):
                draw.text((0, 40 + (i * 12)), text=line, fill="white")

    time.sleep(2)

    # update the viewport one position below, causing a refresh,
    # giving a rolling up scroll effect when done repeatedly
    for y in range(450):
        virtual.set_position((0, y))
        time.sleep(0.01)


if __name__ == "__main__":
    try:
        
        main()
    except KeyboardInterrupt:
        pass

