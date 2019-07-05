#!/usr/bin/env bash

# Initialization of packages list
PACKAGES=""
AURPACKAGES=""

# Add common graphics interface packages and drivers
PACKAGES+="
	xorg
	xorg-apps
	xorg-fonts
	xf86-input-libinput
	xf86-video-vesa
	lib32-mesa
	vulkan-icd-loader
	lib32-vulkan-icd-loader
	xf86-video-intel
	vulkan-intel
	xf86-video-amdgpu
	vulkan-radeon
"

# Add common wm, dm, etc
PACKAGES+="
	lightdm
	lightdm-webkit2-greeter
	bspwm
	sxhkd
	rofi
"
AURPACKAGES+="
	lightdm-webkit-theme-aether
	compton-tryone-git 
"

# Add essencial apps
PACKAGES+="
	rxvt-unicode
	thunar
	gvfs
	thunar-archive-plugin
	thunar-media-tags-plugin
	thunar-volman
	tumbler
	firefox-developer-edition
	code
"

# Add common fonts, themes, cursors
PACKAGES+="
	ttf-liberation
"
AURPACKAGES+="
	captain-frank-cursors-git
	rofimoji
	nerd-fonts-complete
	ttf-xkcd-script-font
	otf-xkcd-font
"

# Add common command utilities
PACKAGES+="
	fish
	git
	openssh
	openssl
	rsync
	lshw
	networkmanager
	bluez
	bluez-utils
	zip
	unzip
"
AURPACKAGES+="
	rar
	unrar
"

# Add common utilities
PACKAGES+="
	scrot
	obs-studio
"

# Add common office software
PACKAGES+="
	libreoffice-fresh
	libreoffice-fresh-pt
	texlive-most
	texlive-lang
"

# Add common development packages
PACKAGES+="
	dlang
	python3
	ghc
	eclipse-javascript
"
AURPACKAGES+="
	godot
	gitkraken
	eclipse-linuxtools
	eclipse-jsonedit
	eclipse-markdown
	eclipse-pydev
	eclipse-texlipse
"

# Add rice utilities
PACKAGES+="
	#clock?
  	neofetch
	netdata
"
AURPACKAGES+="
"

# Add common creative suites
PACKAGES+="
#	gimp or krita
	inkscape
#	shotcut or kdenlive
	lmms
	blender
	mixxx
"

# Image, video and music 
PACKAGES+="
	feh
	vlc
#	lollypop
"

# Add common audio utilities
PACKAGES+="
	alsa-firmware
	alsa-oss
	alsa-utils
	pulseaudio
	pulseaudio-equalizer
	pulseaudio-alsa
	pulseaudio-equalizer-ladspa
	jack
	pulseaudio-jack
	pavucontrol
"

# Add common filesystem support packages
PACKAGES+="
"

# Games
PACKAGES+="
	steam
	desmume
"
 AURPACKAGES+="
 	minecraft-launcher
 "

fi

# Replace newlines with spaces and export vars
export SETUP_PACKAGELIST=$(echo $PACKAGES | tr -s '\n' ' ')
export SETUP_AURPACKAGELIST=$(echo $AURPACKAGES | tr -s '\n' ' ')
