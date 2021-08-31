#!/bin/bash

function run {
 if ! pgrep $1 ;
  then
    $@&
  fi
}

run "xrandr --output HDMI-0 --primary --mode 1920x1080 --pos 1920x0 --rotate normal --output eDP --mode 1920x1080 --pos 0x0 --rotate normal"
run "xrandr --output HDMI-0 --mode 1920x1080 --rate 75.00"
# run "nm-applet"
run "optimus-manager-qt"
run "xfce4-power-manager"
run "/usr/lib/xfce4/notifyd/xfce4-notifyd"
# run "dunst"
run "/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1"
picom -b  --config ~/.config/arco-dwm/scripts/picom.conf &
run "numlockx on"
run slstatus &
sxhkd -c ~/.config/arco-dwm/sxhkd/sxhkdrc &
run "nitrogen --restore"
