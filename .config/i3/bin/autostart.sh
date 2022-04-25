#!/bin/env bash

# sets wallpaper using feh
# bash $HOME/.config/i3/.fehbg

# polybar
$HOME/.config/polybar/launchbar.sh

# Launch terminal, in case something goes wrong
st &

# Fix cursor
xsetroot -cursor_name left_ptr

# kill if already running
killall -9 picom xfce4-power-manager ksuperkey dunst sxhkd conky eww

# sets superkey
ksuperkey -e 'Super_L=Alt_L|F1' &
ksuperkey -e 'Super_R=Alt_L|F1' &

# start hotkey daemon
sxhkd &

# Launch notification daemon
dunst -config $HOME/.config/i3/dunstrc &

# start compositor and power manager
xfce4-power-manager &

while pgrep -u $UID -x picom >/dev/null; do sleep 1; done
picom --config $HOME/.config/i3/picom.conf &

# start polkit
if [[ ! `pidof xfce-polkit` ]]; then
    /usr/lib/xfce-polkit/xfce-polkit &
fi

# start udiskie
udiskie &

# start other programs
spotify &
discord &
firefox &

# xrdb merge
xrdb merge ~/.Xresources

# wallpaper
feh --bg-fill ~/Pictures/Wallpapers/floyd.png
