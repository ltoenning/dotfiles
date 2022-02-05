sh $HOME/.screenlayout/default.sh
sh $HOME/dotfiles/polybar/launch_polybar.sh ~/dotfiles/polybar/config_bspwm left center right
bspc wm -O HDMI-0 DVI-I-1 DVI-D-0
bspc monitor HDMI-0 -d 1 2 3 4
bspc monitor DVI-I-1 -d 5 6 7
bspc monitor DVI-D-0 -d 8 9 10
