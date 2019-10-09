#!/bin/sh
case "$1" in
    button/volumeup)
        pamixer -i 5
        ;;
    button/volumedown)
        pamixer -d 5
        ;;
    button/mute)
        pamixer -t
        ;;
    button/f20)
        pamixer --default-source -t
        ;;
esac
