# BGameiro's Package Recommendation

This file has my recommendations on what packages to use.

This was one of the most difficult issues to overcome when I changed for Linux because there are **so many options**, unfortunately not all good, so I decided to list what packages I use or have used.

This includes all software from free and open source to commercial, from simple scripts to complex applications, from web apps to selfhosted services. Every application and utillity that I use in order to do what I used to do in my Windows machine.

***
***
***

### Packages

1.  Basic system utilities
    1.  Bootloader
    2.  Display server
    3.  Display manager
    4.  Window managers
2.  Other system utilities
    1.  Shell
    2.  Sync files
    3.  Screenshot utilities
    4.  Screen recorder
    5.  PDF viewer
3.  Basic applications
    1.  Browser
    2.  File manager
    3.  Music player
    4.  Video player
    5.  Terminal
    6.  Code editors
4.  Software suites and creation
    1.  Office suite
    2.  Image creation and edition
        1.  Vector images
        2.  Bitmap images
    3.  Video editing
    4.  Music creation and DJ software
        1.  DAW
        2.  DJ
    5.  3D
        1.  Animation
        2.  Modelation
5.  Game related software

***
***

##      Basic system utilities

###     Bootloader

I prefer [Systmd-boot](). It supports multiple OS, is fast and is already installed.

###     Display server

You have 2 main choices: [Xorg]() and [Wayland](). 

Xorg is the old standard and many applications and WM/DE need it. Wayland is the new alternative with more functionalities but isn't as mature. I use Xorg for now. Also Wayland doesn't work with nvidia.

###     Display manager

After giving several display managers a try I ended up using [LightDM]() with [WebKit 2]() due to its support of several Window Managers and Desktop Environments and how easy it is to customize with HTML/CSS/JS. It can also be used as a lock screen.

###     Window manager

I recommend using [AwesomeWM](), a modern, fast and capable Window Manager that can be configured with lua. For me it is the best option for productivity while looking good and modern. Here you have some [AwesomeWM rice]().

##      Other system utilities

###     Shell

*   [Fish]().

###     Sync files

*   [Git]()
    *   For text based files like [dotfiles]().
*   [Rsync]()
    *   For syncing binary files across several devices (like your music collection).

###     Screenshot utilities

*   [Scrot]()

###     Screen recorder

*   [OBS studio]()

###     PDF viewer

*   [Mupdf]()

##      Basic applications

###     Browser

*   [Firefox Developer Edition]()

###     File manager

*   [Thunar]()
    *   Minimal
*   [Dolphin]()
    *   Heavy

###     Music player

*   [MPD]() + [Cantata]()
    *   GUI
*   [MPD]() + [ncmpcpp]()
    *   CLI

###     Video player

*   [VLC]()

###     Terminal

*   [Urxvt]()

###     Code editors

*   [Code]()
*   [Jupyter Notebook]()

##      Software suites and creation

###     Office suite

*   [LibreOffice]()

###     Image creation and edition

####    Vector images

*   [Inkscape]()

####    Bitmap images

*   [Krita]()

###     Video editing

*   [Shotcut]()
*   [Kdenlive]()
*   [DaVinci Resolve]()

###     Music creation and DJ software

####    Digital Audio Workstation

*   [LMMS]()

####    DJ

*   [Mixxx]()

###     3D

####    Animation

*   [Blender]()

####    Modelation

*   [Onshape]()

##      Game related software

*   [Steam]()
*   [GameMode]()
*   [Desmume]()
    *   Nintendo DS emulator