#/bin/bash

gtf 1920 1200 60
xrandr --newmode "1920x1200_60.00"  193.16  1920 2048 2256 2592  1200 1201 1204 1242  -HSync +Vsync
xrandr --addmode VBOX1 1920x1200_60.00
xrandr --addmode VBOX0 1920x1200_60.00
xrandr --output VBOX0 --mode 1920x1200_60.00
xrandr --output VBOX1 --mode 1920x1200_60.00 --left-of VBOX0
