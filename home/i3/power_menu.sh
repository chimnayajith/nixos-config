#!/usr/bin/env bash

chosen=$(printf " Shutdown\n Restart\n Lock\n Logout" | dmenu -i -p "Power:")

confirm() {
    echo -e "No\nYes" | dmenu -i -p "$1" | grep -q "Yes"
}

case "$chosen" in
    " Shutdown")
        if confirm "Are you sure you want to shut down?"; then
            systemctl poweroff
        fi
        ;;
    " Restart")
        if confirm "Are you sure you want to restart?"; then
            systemctl reboot
        fi
        ;;
    " Lock")
        i3lock -c 000000
        ;;
    " Logout")
        if confirm "Are you sure you want to log out?"; then
            i3-msg exit
        fi
        ;;
esac
