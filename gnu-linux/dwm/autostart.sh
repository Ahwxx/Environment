#!/bin/env bash

# sets wallpaper using feh
bash $HOME/.dwm/.fehbg

# kill if already running
killall -9 picom xfce4-power-manager ksuperkey dunst sxhkd dwmblocks eww

# Launch Conkeww
# sed -i "s/colors\/color-.*/colors\/color-one-dark.yuck\")/g" $HOME/.config/conkeww/eww.yuck
# eww --config $HOME/.config/conkeww/ open conkeww-main

# sets superkey
ksuperkey -e 'Super_L=Alt_L|F1' &
ksuperkey -e 'Super_R=Alt_L|F1' &

# starts dwmblocks
dwmblocks &

# start hotkey daemon
sxhkd &

# Launch notification daemon
dunst -config $HOME/.dwm/dunstrc &

# start compositor and power manager
xfce4-power-manager &

while pgrep -u $UID -x picom >/dev/null; do sleep 1; done
picom --config $HOME/.dwm/picom.conf &

# start polkit
if [[ ! `pidof xfce-polkit` ]]; then
    /usr/lib/xfce-polkit/xfce-polkit &
fi

# start udiskie
udiskie &

# replace neovim colorscheme
sed -i "s/theme =.*$/theme = \"onedark\",/g" $HOME/.config/nvim/lua/chadrc.lua

# change xfce4-terminal colorscheme
XFCE_TERM_PATH="$HOME/.config/xfce4/terminal"
cp "$XFCE_TERM_PATH"/colorschemes/one-dark "$XFCE_TERM_PATH"/terminalrc

# set up my monitors
xrandr --output DP-0 --left-of DP-2 --mode 1920x1080 --output DP-2 --primary --mode 1920x1080 --rate 240 --output DP-4 --right-of DP-2 --mode 1920x1080 --rate 120

sleep 4
bash $HOME/.dwm/.fehbg

# start programs
discord-canary &
spotify &
alacritty &