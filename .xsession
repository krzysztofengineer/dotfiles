feh --bg-scale ~/wallpapers/wallpaper.png

compton &

st &

while true; do
        mute=`sndioctl -n output.mute`
        volume=`sndioctl -n output.level`
        if [ $mute == 1 ] ; then vol=0; else vol="$volume"; fi
        battery=`/usr/sbin/apm -l`
        date=`date '+%Y-%m-%d %H:%M'`
        xsetroot -name "vol: ${vol} /  bat: ${battery}% /  ${date}";
        sleep 1;
done &


exec dwm
