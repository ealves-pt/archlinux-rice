#!/bin/sh

swayidle -w \
        before-sleep "$HOME/.config/hypr/scripts/lock.sh" \
        timeout 50 'temp=$(brightnessctl g); brightnessctl set $((temp / 4))' \
            resume 'temp=$(brightnessctl g); brightnessctl set $((temp * 4))' \
        timeout 60 "$HOME/.config/hypr/scripts/lock.sh & sleep 0.5 && hyprctl dispatch dpms off" \
            resume 'hyprctl dispatch dpms on' \
        timeout 600 'systemctl suspend' \
            resume 'hyprctl dispatch dpms on'
