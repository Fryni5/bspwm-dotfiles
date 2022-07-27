#!/usr/bin/zsh

# Terminate already running bar instance
polybar-msg cmd quit
# If all your bars have ipc enabled, you can also use
# polybar-msg cmd quit

# Launch Polybar, using default config location ~/.config/polybar/config.ini

echo "---" |tee -a 	/tmp/polybar1.log /tmp/polybar2.log
polybar bar1 2>&1 | tee -a /tmp/polybar1.log & disown

echo "Polybar launched..."
