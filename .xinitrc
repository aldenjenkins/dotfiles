. ~/.xprofile
sxhkd -m -1 >> /home/alden/.local/share/log/derp.log 2>&1  &
exec bspwm -c /home/alden/.config/bspwm/bspwmrc
#exec i3
