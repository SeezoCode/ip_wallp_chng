#!/bin/bash
### NOT TESTED ON MINT YET!!!
ip=`ifconfig | grep 192.168 | awk '{print $2}'`
convert template.png -gravity North -pointsize 108 -annotate +280+640 "$ip" wallpaper.png
getdir=`pwd`
dir="file://$getdir/wallpaper.png"
gsettings set org.mate.desktop.background picture-filename $dir
