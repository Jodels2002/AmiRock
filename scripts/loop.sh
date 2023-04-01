if [  -d /opt/OLED/images/ ]; then
    cd /opt/OLED/
    python3 matrix.py
    python3 sysinfo.py
    python3 loop.py
    
fi
