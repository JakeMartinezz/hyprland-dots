#!/bin/bash
pkill eww
eww daemon
eww open bar
eww open notifications_popup
~/.config/eww/scripts/notifications.py &
