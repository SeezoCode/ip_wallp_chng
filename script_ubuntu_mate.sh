#!/bin/bash
ip=`ifconfig | grep 192.168 | awk '{print $2}'`
convert template.png -gravity North -pointsize 108 -annotate +280+640 "$ip" wallpaper.png
getdir="$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"
dir="$getdir/wallpaper.png"
dconf write /org/mate/desktop/background/picture-filename "'$dir'"
gsettings set org.gnome.desktop.background picture-uri $dir
dconf write /org/gnome/desktop/background/picture-filename "'$dir'"

# Funguje na pocitacich v SIT učebně
