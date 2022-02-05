#/bin/zsh
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Launch Polybar, using bspwm config
config=$1
for bar in "${@:2}"
do
	polybar --config=$config $bar &
done
