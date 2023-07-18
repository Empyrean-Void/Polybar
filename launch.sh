#!/bin/bash

killall -q polybar

polybar main 2>&1 | tee -a /tmp/polybar.log & disown
polybar laptop 2>&1 | tee -a /tmp/polybar.log & disown

if [[ xrandr -q | rg "eDP1 connected" -eq 1 ]]; then
  polybar iGPU 2>&1 | tee -a /tmp/polybar.log & disown
fi

echo "polybar launched"
