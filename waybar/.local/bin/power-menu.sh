#!/usr/bin/env bash

# Power menu script for waybar
# Uses rofi with styling matching waybar theme

# Options
logout="󰍃 Logout"
restart="󰜉 Restart"
shutdown="󰐥 Shutdown"

# Show menu and get selection
chosen=$(echo -e "$logout\n$restart\n$shutdown" | rofi -dmenu -theme ~/.config/rofi/power-menu.rasi -p "Power Menu")

# Execute action based on selection
case $chosen in
    "$logout")
        hyprctl dispatch exit
        ;;
    "$restart")
        systemctl reboot
        ;;
    "$shutdown")
        systemctl poweroff
        ;;
esac
