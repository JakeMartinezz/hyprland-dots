#!/bin/bash

pamixer --get-volume-human | tr -d '%'

get_current_volume() {
  pamixer --get-volume-human | tr -d '%'
}

previous_volume=$(get_current_volume)

pactl subscribe | while read -r _; do
  current_volume=$(get_current_volume)

  if [ "$current_volume" != "$previous_volume" ]; then
    echo "$current_volume"
    previous_volume=$current_volume
  fi
done















