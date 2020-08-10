feh --bg-scale ~/wallpapers/wallpaper.png

compton &

st &

while true; do
    mute=`sndioctl -n output.mute`
    volume=`sndioctl -n output.level`
    if [ $mute == 1 ] ; then vol=0; else vol="$volume"; fi
    battery=`/usr/sbin/apm -l`
    date=`date '+%Y-%m-%d %H:%M'`
    wifi=`ifconfig iwm0 | grep ieee80211 | awk {'print $3'}`
    signal=`ifconfig iwm0 | grep ieee80211 | awk {'print $8'}`
    ip=`ifconfig iwm0 | grep inet | awk '{ print $2}'`
    xsetroot -name "vol: ${vol}  /  bat: ${battery}%   /  ${ip}  /  ${date}";
    sleep 1;
done &


exec dwm
