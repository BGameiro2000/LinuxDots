# BGameiro's Installation Guide of ArchLinux with my dotfiles

This file exists because I always forget that my Boot/Efi partition can't be formatted with the EXT4 file system. I also forget how I configured things last time (example: sometimes I use .xinitrc and others I enable my display manager with systemctl).

So if you have any problem replicating my system, just made the change for Linux and want one more source of information or are my future self: feel free to follow this installation and configuration guide based on the official installation from the [Arch Wiki](https://wiki.archlinux.org/index.php/Installation_guide#Network_configuration).

***
***

## Assumptions

*   Correct ISO
*   UEFI mode
*   Have an internet connection
*   Use FAT32 for the Boot partition and EXT4 for the others
*   Don't want swap

***
***

##  Installation

1.  Pre-installation
    1.  Boot the live environment
    2.  Set the keyboard layout
    3.  Update the system clock
    4.  Partition the disks
    5.  Format the partitions
    6.  Mounts the file systems
2.  Installation
    1.  Install the base and base-devel package
3.  Basic configuration
    1.  Fstab
    2.  Chroot
    3.  Time zone
    4.  Localization
    5.  Network configuration
    6.  Initramfs
    7.  Root password
    8.  Boot loader

##  Configuration

1.  Create a new user
    1.  Download your shell
    2.  Create the user
    3.  Set the password
    4.  Create the Wheel group
2.  Install Xorg
3.  Install the graphics drivers
4.  Install the display manager
    1.  Install the LightDM
    2.  Enable it
    3.  Download and add numlockx
    4.  Select the correct greeter
5. Install the Window Manager
6. Install packages
7. Set configurations according to my dotfiles

***
***