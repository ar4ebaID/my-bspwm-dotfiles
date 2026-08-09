#!/bin/env bash

options=("󰍃 Logout" " Reboot" " Shutdown")
choice=$(printf "%s\n" "${options[@]}" | rofi -m -1 -dmenu -p "")

case "$choice" in
  *"Logout"*) pkill -KILL -u "$USER" ;;
  *"Reboot"*) reboot ;;
  *"Shutdown"*) systemctl poweroff ;;
esac
