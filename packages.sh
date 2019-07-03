#!/usr/bin/env bash

# Initialization of packages list
PACKAGES=""
AURPACKAGES=""

# Add common graphical apps and themes
PACKAGES+="
"
AURPACKAGES+="
	captain-cursors
"

# Add common graphics interface packages and drivers
PACKAGES+="
	xorg
	xorg-apps
	xf86-input-libinput
	xf86-video-intel
	xorg-fonts
	lib32-virtualgl
	vulkan-intel
"

# Add common fonts
PACKAGES+="
"
AURPACKAGES+="
"

# Add common apps
PACKAGES+="
	git
"

# Add common text editors
PACKAGES+="
	code
"

# Add common office software
PACKAGES+="
	libreoffice-fresh
	libreoffice-fresh-pt
"

# Add common development packages
PACKAGES+="
	dlang
	python3
  ghc
"

# Add common utilities
PACKAGES+="
	vlc
	lshw
	openssh
	openssl
  neofetch
"
AURPACKAGES+="
"

# Add common design and handwriting utilities
PACKAGES+="
#	gimp
#	krita
	inkscape
"

# Add common audio utilities and packages
PACKAGES+="
"
AURPACKAGES+="
"

# Add common filesystem support packages
PACKAGES+="
"

# Games
 AURPACKAGES+="
 	minecraft-launcher
 "

fi

# Replace newlines with spaces and export vars
export SETUP_PACKAGELIST=$(echo $PACKAGES | tr -s '\n' ' ')
export SETUP_AURPACKAGELIST=$(echo $AURPACKAGES | tr -s '\n' ' ')
