#!/bin/bash

killall -q polybar

polybar main 2>&1 | tee -a /tmp/polybar.log & disown
polybar laptop 2>&1 | tee -a /tmp/polybar.log & disown

echo "polybar launched"
