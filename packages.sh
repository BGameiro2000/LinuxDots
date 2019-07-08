#!/usr/bin/env bash

# Initialization of packages list
PACKAGES=""
AURPACKAGES=""

# Add common graphics interface packages and drivers
PACKAGES+="
	intel-ucode
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
	light-locker
	numlockx
	lightdm
	lightdm-webkit2-greeter
	awesome
	vicious
	dex
	rlwrap
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
	lxappearance
	materia-kde
	materia-gtk-theme
"
AURPACKAGES+="
	captain-frank-cursors-git
	rofimoji
	nerd-fonts-complete
	ttf-xkcd-script-font
	otf-xkcd-font
	ttf-anka-coder
"

# Add common command utilities
PACKAGES+="
	lastpass-cli
	lm_sensors
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
	unrar
"
AURPACKAGES+="
	rar
	phoronix-test-suite
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
  	neofetch
	netdata
	#cava
"
AURPACKAGES+="
	tty-clock
"

# Add common creative suites
PACKAGES+="
	gimp or krita
	inkscape
	shotcut 
	lmms
	blender
	mixxx
"
AURPACKAGES+="
	mathematica
"

# Image, video and music 
PACKAGES+="
	#feh
	mpd
	mupdf
	vlc
	ncmpcpp
	cantata
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
	#pavucontrol
"

# Add common filesystem support packages
PACKAGES+="
	flac
	faac
	x264
	x265
	libmpeg2
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
	multimc-git
 "

fi

# Replace newlines with spaces and export vars
export SETUP_PACKAGELIST=$(echo $PACKAGES | tr -s '\n' ' ')
export SETUP_AURPACKAGELIST=$(echo $AURPACKAGES | tr -s '\n' ' ')
