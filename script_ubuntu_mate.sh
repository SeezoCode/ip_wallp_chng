#!/bin/bash

dir="/home/student/wallpaper.jpg"
dconf write /org/mate/desktop/background/picture-filename "'$dir'"
gsettings set org.gnome.desktop.background picture-uri $dir
dconf write /org/gnome/desktop/background/picture-filename "'$dir'"

# Funguje na pocitacich v SIT učebně
