#!/bin/sh

yaourt -Qme > ~/.config/yaourt_packages.txt
pacman -Q | cut -d' ' -f1 > ~/.config/pacman_packages.txt
pip freeze > ~/.config/pip_packages.txt
