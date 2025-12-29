#!/usr/bin/env bash

set -e

# Check if wofi is already running
if pgrep -x "wofi" > /dev/null
then
    # If wofi is running, kill it
    pkill -x "wofi"
else
    # If wofi is not running, launch it with custom options
    wofi --show drun \
         --width 600 \
         --height 400 \
         --prompt "Search..." \
         --allow-images \
         --insensitive
fi