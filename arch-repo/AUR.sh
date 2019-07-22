#!/usr/bin/bash

# Initialization of packages list
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

eval yay -S $PACKAGES