#!/bin/bash


state=$(eww get open_launcher)

open_launcher() {
    if [[ -z $(eww windows | grep '*launcher') ]]; then
        rofi drun -m 5 -show
    fi
}

close_launcher() {
    kill all rofi
}

case $1 in
    close)
        close_launcher
        exit 0;;
    open)
        open_launcher
        exit 0;;
esac

case $state in
    true)
        close_launcher
        exit 0;;
    false)
        open_launcher
        exit 0;;
esac
