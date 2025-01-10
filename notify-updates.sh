#!/bin/bash
pacman=$(checkupdates | wc -l)
aur=$(yay -Qua | wc -l)
sum=$(($pacman + $aur))
notify-send --icon=update-high "$sum Updates available"