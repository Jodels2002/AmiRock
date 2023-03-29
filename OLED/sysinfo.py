#! /usr/bin/python3
# -*- coding: utf-8 -*-

import os
import sys
import time
import psutil
from pathlib import Path
from datetime import datetime
from luma.core.interface.serial import i2c
from luma.oled.device import sh1106, ssd1306
from PIL import ImageFont, ImageDraw
from luma.core.render import canvas
from PIL import ImageFont


serial = i2c(port=0, address=0x3C)
device = sh1106(serial)

top = 0
width = 128
height = 64
device.height = 64
def bytes2human(n):
    """
    >>> bytes2human(10000)
    '9K'
    >>> bytes2human(100001221)
    '95M'
    """
    symbols = ('K', 'M', 'G', 'T', 'P', 'E', 'Z', 'Y')
    prefix = {}
    for i, s in enumerate(symbols):
        prefix[s] = 1 << (i + 1) * 10
    for s in reversed(symbols):
        if n >= prefix[s]:
            value = int(float(n) / prefix[s])
            return '%s%s' % (value, s)
    return f"{n}B"


def cpu_usage():
    # load average, uptime
    uptime = datetime.now() - datetime.fromtimestamp(psutil.boot_time())
    av1, av2, av3 = os.getloadavg()
    return "Ld:   %.1f   %.1f   %.1f                Up: %s" \
        % (av1, av2, av3, str(uptime).split('.')[0])


def mem_usage():
    usage = psutil.virtual_memory()
    return "Memory:   %s %.0f%%" \
        % (bytes2human(usage.used), 100 - usage.percent)


def disk_usage(dir):
    usage = psutil.disk_usage(dir)
    return "HDD:      %s %.0f%%" \
        % (bytes2human(usage.used), usage.percent)


def network(iface):
    stat = psutil.net_io_counters(pernic=True)[iface]
    return "LAN: %s: Tx%s, Rx%s" % \
           (iface, bytes2human(stat.bytes_sent), bytes2human(stat.bytes_recv))


def stats(device):
    # use custom font
   
    font2 = ImageFont.truetype('C&C Red Alert [INET].ttf', 12)

    with canvas(device) as draw:
        draw.text((0, 0), cpu_usage(), font=font2, fill="white")
        if device.height >= 32:
            draw.text((0, 20), mem_usage(), font=font2, fill="white")
            draw.text((0, 32), disk_usage('/'), font=font2, fill="white")
        
            
        if device.height >= 64:
            draw.text((0, 32), disk_usage('/'), font=font2, fill="white")
            try:
                draw.text((0, 48), network('enP4p65s0'), font=font2, fill="white")
            except KeyError:
                # no wifi enabled/available
                pass


def main():
    while True:
        stats(device)
        time.sleep(5)


if __name__ == "__main__":
    try:
    
        main()
    except KeyboardInterrupt:
        pass
