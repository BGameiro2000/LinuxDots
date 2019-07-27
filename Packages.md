# BGameiro's Package Recommendation

This file has my recommendations on what packages to use.

This was one of the most difficult issues to overcome when I changed for Linux because there are **so many options**, unfortunately not all good, so I decided to list what packages I use or have used.

This includes all software from free and open source to commercial, from simple scripts to complex applications, from web apps to selfhosted services. Every application and utillity that I use in order to do what I used to do in my Windows machine.

***
***
***

### Packages

- [BGameiro's Package Recommendation](#BGameiros-Package-Recommendation)
    - [Packages](#Packages)
  - [Basic system utilities](#Basic-system-utilities)
    - [Bootloader](#Bootloader)
    - [Display server](#Display-server)
    - [Display manager](#Display-manager)
    - [Window manager](#Window-manager)
  - [Other system utilities](#Other-system-utilities)
    - [Shell](#Shell)
    - [Sync files](#Sync-files)
    - [Screenshot utilities](#Screenshot-utilities)
    - [Screen recorder](#Screen-recorder)
    - [PDF viewer](#PDF-viewer)
  - [Basic applications](#Basic-applications)
    - [Browser](#Browser)
    - [File manager](#File-manager)
    - [Music player](#Music-player)
    - [Video player](#Video-player)
    - [Terminal](#Terminal)
    - [Code editors](#Code-editors)
  - [Software suites and creation](#Software-suites-and-creation)
    - [Office suite](#Office-suite)
    - [Image creation and edition](#Image-creation-and-edition)
      - [Vector images](#Vector-images)
      - [Bitmap images](#Bitmap-images)
    - [Video editing](#Video-editing)
    - [Music creation and DJ software](#Music-creation-and-DJ-software)
      - [Digital Audio Workstation](#Digital-Audio-Workstation)
      - [DJ](#DJ)
    - [3D](#3D)
      - [Animation](#Animation)
      - [Modelation](#Modelation)
  - [Game related software](#Game-related-software)

***
***

##      Basic system utilities

###     Bootloader

I prefer [Systmd-boot](https://wiki.archlinux.org/index.php/Systemd-boot). It supports multiple OS, is fast and is already installed.

###     Display server

You have 2 main choices: [Xorg](https://wiki.archlinux.org/index.php/Xorg) and [Wayland](https://wiki.archlinux.org/index.php/Wayland). 

Xorg is the old standard and many applications and WM/DE need it. Wayland is the new alternative with more functionalities but isn't as mature. I use Xorg for now. Also Wayland doesn't work with nvidia.

###     Display manager

After giving several display managers a try I ended up using [LightDM](https://wiki.archlinux.org/index.php/LightDM) with [WebKit 2](https://github.com/topics/lightdm-webkit2-greeter) due to its support of several Window Managers and Desktop Environments and how easy it is to customize with HTML/CSS/JS. It can also be used as a lock screen.

###     Window manager

I recommend using [AwesomeWM](https://wiki.archlinux.org/index.php/Awesome), a modern, fast and capable Window Manager that can be configured with lua. For me it is the best option for productivity while looking good and modern. Here you have some [AwesomeWM rice](https://www.reddit.com/r/unixporn/search/?q=%5Bawesome%5D&restrict_sr=1&sort=top).

##      Other system utilities

###     Shell

*   [Fish](https://wiki.archlinux.org/index.php/Fish)

###     Sync files

*   [Git](https://wiki.archlinux.org/index.php/Git)
    *   For text based files like [dotfiles](https://wiki.archlinux.org/index.php/Dotfiles).
*   [Rsync](https://wiki.archlinux.org/index.php/Rsync)
    *   For syncing binary files across several devices (like your music collection).

###     Screenshot utilities

*   [Maim](https://wiki.archlinux.org/index.php/Screen_capture)

###     Screen recorder

*   [OBS studio](https://obsproject.com/)

###     PDF viewer

*   [Mupdf](https://wiki.archlinux.org/index.php/MuPDF)

##      Basic applications

###     Browser

*   [Firefox Developer Edition](https://wiki.archlinux.org/index.php/Firefox)

###     File manager

*   [Thunar](https://wiki.archlinux.org/index.php/Thunar)
    *   Minimal
*   [Dolphin](https://wiki.archlinux.org/index.php/Dolphin)
    *   Heavy

###     Music player

*   [MPD](https://wiki.archlinux.org/index.php/Music_Player_Daemon) + [Cantata](https://github.com/CDrummond/cantata)
    *   GUI
*   [MPD](https://wiki.archlinux.org/index.php/Music_Player_Daemon) + [ncmpcpp](https://wiki.archlinux.org/index.php/Ncmpcpp)
    *   CLI

###     Video player

*   [VLC](https://wiki.archlinux.org/index.php/VLC_media_player)

###     Terminal

*   [Urxvt](https://wiki.archlinux.org/index.php/Rxvt-unicode)

###     Code editors

*   [Code](https://wiki.archlinux.org/index.php/Visual_Studio_Code)
*   [Jupyter Notebook](https://wiki.archlinux.org/index.php/Jupyter)

##      Software suites and creation

###     Office suite

*   [LibreOffice](https://wiki.archlinux.org/index.php/LibreOffice)

###     Image creation and edition

####    Vector images

*   [Inkscape](https://wiki.archlinux.org/index.php/Inkscape)

####    Bitmap images

*   [Krita](https://krita.org/en/)

###     Video editing

*   [Shotcut](https://shotcut.org/)
*   [Kdenlive](https://kdenlive.org/)
*   [DaVinci Resolve](https://www.blackmagicdesign.com/pt/products/davinciresolve)

###     Music creation and DJ software

####    Digital Audio Workstation

*   [LMMS](https://wiki.archlinux.org/index.php/LMMS)

####    DJ

*   [Mixxx](https://www.mixxx.org/)

###     3D

####    Animation

*   [Blender](https://wiki.archlinux.org/index.php/Blender)

####    Modelation

*   [Onshape](https://www.onshape.com/)

##      Game related software

*   [Steam](https://wiki.archlinux.org/index.php/Steam)
*   [GameMode](https://github.com/FeralInteractive/gamemode)
*   [Desmume](https://desmume.org)
    *   Nintendo DS emulator

***
***

This are just suggestions based on what I use/need. Your needs may differ.

You may want to check [slant](https://www.slant.co/) or [Awesome list](https://github.com/topics/awesome-list) for other suggestions.