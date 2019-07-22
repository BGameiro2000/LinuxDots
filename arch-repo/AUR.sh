#!/usr/bin/sh

# Initialization of package list
PACKAGES=""

#Apps
PACKAGES+="
"

#Codecs
PACKAGES+="
"

#Desktop
PACKAGES+="
    ttf-xkcd-script-font
    otf-xkcd-font
    ttf-anka-coder
    captain-frank-cursors-git
    lightdm-webkit-theme-aether
"

#Devel
PACKAGES+="
    godot
    gitkraken
"

#Games
PACKAGES+="
    gamemode
    minecraft-launcher
    multimc-git
"

#Suites
PACKAGES+="
    mathematica
"

#Utils
PACKAGES+="
"

#Check if yay is installed, if not asked if user wants to install it.
yay -V | grep -q 'yay v' && echo -e yay -S $PACKAGES && yay -S $PACKAGES