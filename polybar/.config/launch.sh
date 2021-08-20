#!/usr/bin/env sh

# More info : https://github.com/jaagr/polybar/wiki

# Install the following applications for polybar and icons in polybar if you are on ArcoLinuxD
# awesome-terminal-fonts
# Tip : There are other interesting fonts that provide icons like nerd-fonts-complete
# --log=error
# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar > /dev/null; do sleep 1; done



PRIMARY_BAR_NAME=mainbar-i3
SECONDARY_BAR_NAME=mainbar-i3-extra
BAR_CONFIG=/home/$USER/.config/polybar/config.ini


PRIMARY=$(xrandr --query | grep " connected" | grep "primary" | cut -d" " -f1)
OTHERS=$(xrandr --query | grep " connected" | grep -v "primary" | cut -d" " -f1)

# Launch on primary monitor
MONITOR=$PRIMARY polybar --reload -c $BAR_CONFIG $PRIMARY_BAR_NAME &
sleep 1

# Launch on all other monitors
for m in $OTHERS; do
     MONITOR=$m polybar --reload -c $BAR_CONFIG $SECONDARY_BAR_NAME &
     done

echo "Bars launched..."
