killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Launch Polybar, using bspwm config
polybar --config=~/dotfiles/polybar/config_bspwm center &
polybar --config=~/dotfiles/polybar/config_bspwm left &
polybar --config=~/dotfiles/polybar/config_bspwm right &
