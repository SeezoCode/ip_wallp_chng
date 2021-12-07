ip=`ifconfig | grep 192.168 | awk '{print $2}'`
echo $ip
convert template.png -gravity North -pointsize 108 -annotate +280+640 "$ip" wallpaper.png
getdir=`pwd`
echo $getdir
dir="file://$getdir/wallpaper.png"
echo $dir
gsettings set org.gnome.desktop.background picture-uri $dir
