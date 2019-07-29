# BGameiro's Installation Guide of ArchLinux with my dotfiles

This file exists because I always forget that my Boot/Efi partition can't be formatted with the EXT4 file system. I also forget how I configured things last time.

So if you have any problem replicating my system, just made the change for Linux and want one more source of information or are my future self: feel free to follow this installation and configuration guide based on the official installation from the [Arch Wiki](https://wiki.archlinux.org/index.php/Installation_guide#Network_configuration).

***
***

## Assumptions

*   Correct ISO
*   UEFI mode
*   Have an internet connection
*   Use FAT32 for the Boot partition and EXT4 for the others
*   Don't want swap
*   x86_64 system

***
***

##  Installation

1.  [Pre-installation]()
    1.  Prepare the live environment
    2.  Boot the live environment
    3.  Set the keyboard layout
    4.  Update the system clock
    5.  Partition the disks
    6.  Format the partitions
    7.  Name the partiotions
    8.  Mounts the file systems
2.  [Installation]()
    1.  Install the base and base-devel package
3.  [Basic configuration]()
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

##  Scripts, packages and automation

1.  Git repo for your dotfiles
    1.  Create
    2.  Structure
2.  Install script
3.  Meta packages

***
***

##  Installation

### Pre-installation

####    Prepare the live environment

Go to archlinux.org/download and download the latest .iso.

It is recommended that you download using Torrent due to the possibility of having a corrupt file. If you use direct download it is recommended that you verify the checksums by running the commands:

<pre>
md5sum archlinux-<i>version</i>-x86_64.iso

sha256sum archlinux-<i>version</i>-x86_64.iso
</pre>

You can also verify the integraty of your .iso once you boot it by running:

<pre>
gpg --keyserver-options auto-key-retreive --verify archlinux-<i>version</i>-x86_64.iso.sig
</pre>

Next burn the .iso to your flash drive. There are several ways of doing this, I use [Etcher](balena.io/etcher) since it's free and cross-platform.

Finally access your computer BIOS and make sure that USB live appears first in the boot order that any other bootable media that you may have installed.

####    Boot the live environment

When it comes to the bootloader select _Boot Arch Menu_. It will boot your live environment and you will be automatically logged as root in a zsh shell.

####    Set the keyboard layout

Default keyboard layout is US.

Available layouts can be listed with:

<pre>
ls /usr/share/kbd/keymaps/**/*.map.gz
</pre>

To select a keyboard layout run:

<pre>
loadkeys <i>layout</i>
</pre>

Example for portuguese layout:

<pre>
loadkeys pt-latin9
</pre>

>**This only changes the layout for the live environment until the next boot.**

####    Update the system clock

Just run:

<pre>
timedatectl set-ntp true
</pre>

####    Partition the disks

This is probably where most systems differ.

I have 4 SSDs in my computer. One 120 Gb SSD with my EFI and root partitions, one 240 Gb SSD with my home partition, one 240 Gb SSD with my music directory and one 500 Gb SSD with my game directory. I don't have swap as I have plenty of RAM and I don't put my computer to hibernate or in suspension.

You will need 2 basic partitions: EFI and root.

Once you have one idea of what your partitions may look like you can run the following command to list your partitions:

<pre>
fdisk -l
</pre>

To create the partitions you can use cfdisk as it's more intuitive:

<pre>
cfdisk /dev/sdX
</pre>

Where X is the letter of your disk (see <code>fdisk -l</code>).

Wipe all partitions and create the ones you want.

> You need an EFI partition with at least 512 Mb and a root partition.

This is what my configuration looks like:

####    Format the partitions

Now that you have the partitions you have to format them. You can use the following commands (where X is letter of a disk and Y is the number of your partition) for each of your partition:

Swap:

<pre>
mkswap /dev/sd<i>XY</i>
swapon /dev/sd<i>XY</i>
</pre>

EFI partition:

<pre>
mkfs.fat -F 32 /dev/sd<i>XY</i>
</pre>

Any other partition:

<pre>
mkfs.ext4 /dev/sd<i>XY</i>
</pre>

####    Name the partitions

To make everything more easier lets name our partitions by giving them labels:

Swap:

<pre>
swaplabel -L "<i>new label</i>" /dev/sd<i>XY</i>
</pre>

Fat32:

<pre>
fatlabel /dev/sd<i>XY</i> "<i>new label</i>"
</pre>

Ext4:

<pre>
e2label /dev/sd<i>XY</i> "<i>new label</i>"
</pre>

####    Mount the file systems

You now have to mount the partitions on the root partition /mnt:

EFI partition:

<pre>
mount /dev/sd<i>XY</i> /mnt/efi
</pre>

Root partition:

<pre>
mount /dev/sd<i>XY</i> /mnt
</pre>

Home partition:

<pre>
mount /dev/sd<i>XY</i> /mnt/home
</pre>

> If you created a partition for a specific user, for games or for music **don't mount it yet**.

### Installation

####    Install the base

You may want to update you mirrors before this. But I don't. You can run [this]() script to update and rank them.

Now comes the part when you install the basic packages for your system. The only required package is <code>base</code> but I recommend installing the <code>base-devel</code> package. Run:

<pre>
pacstrap /mnt base base-devel
</pre>

> You can install more packages besides <code>base</code> and <code>base-devel</code>. For example, you can install the zen kernel with:
> <pre>
> pacstrap /mnt base base-devel linux-zen linux-zen-headers --ignore linux linux-headers
> </pre>
> For a list of available kernels please refer [here](https://wiki.archlinux.org/index.php/Kernel#Officially_supported_kernels).

> **You only need to install the <code>base</code> package and <code>base-devel</code> if you're using AUR.**

>You can install any official package with <code>pacstrap</code> but this [is not recommended](https://bbs.archlinux.org/viewtopic.php?id=181675).

### Basic configuration

####    Fstab

First lets geneate the fstab file. The fstab file is a file that contains the information about mounted drives and partitions. You can configure the file based on UUID (with the <code>-U</code> flag) or baseed on labels (with the <code>-L</code> flag). To generate the file run:

<pre>
genfstab -L /mnt >> /mnt/etc/fstab
</pre>

> You have to run this command (<code>genfstab -L / >> /etc/fstab</code> if already in your system) after adding another mounted drive to your system in order to be persistent after boot.

You can then check the file (<code>/mnt/ect/fstab</code>) in order to see if there is any error.

####    Chroot

Now change root into your system by running:

<pre>
arch-chroot /mnt
</pre>

This means that you are now under your system (previously <code>/mnt</code>) instead of the live system.

####    Time zone

The time zone can be set with:

<pre>
ln -sf /usr/share/zoneinfo/<i>Region</i>/<i>City</i> /etc/localtime
</pre>

For example, for Lisbon, Portugal:

<pre>
ln -sf /usr/share/zoneinfo/Europe/Lisbon /etc/localtime
</pre>

Now to generate <code>/etc/adjtime</code>:

<pre>
hwclock --systohc
</pre>

This command assumes the hardware clock is set to UTC.

####    Localization

To set the locales you need to uncomment the needed loacles in <code>/etc/locale.gen</code>. You can do this with:

<pre>
nano /etc/locale.gen
</pre>

and erasing the '#' before the desired locales. In my case it would look something like this:

<pre>

</pre>

Then run:

<pre>
locale-gen
</pre>

To set the variables according to your locales you need to edit **at least the <code>LANG</code> variable** in <code>/etc/locale.conf</code>. Once again, you can do this with:

<pre>
nano /etc/locale.conf
</pre>

and it should at least look like this:

<pre>
LANG=<i>en_US.UTF-8</i>
</pre>

More complex files can look, for example, like this:

<pre>
LANG=<i>en_US.UTF-8</i>

</pre>

To make your keyboard layout persistent edit <code>/etc/vconsole.conf</code> with:

<pre>
nano /etc/vconsole.conf
</pre>

To look like this:

<pre>
KEYMAP=pt-latin9
</pre>

> This change won't do anything in graphical environments. This only applies to the TTY. (Not even terminal emulators)

####    Network configuration

Create the hostname (name of your host) file:

<pre>
nano /etc/hostname
</pre>

with the name of your host:

<pre>
<i>myhostname</i>
</pre>

and match the entries to hosts:

<pre>
nano /etc/hosts
</pre>

<pre>
127.0.0.1   localhost
::1         localhost
127.0.1.1   <i>myhostname</i>.localdomain   <i>myhostname</i>
</pre>

> A permanent IP address should replace <i>127.0.1.1</i> in case there is one configured.

####    Initramfs

> Usually this is not required since <code>mkinitcpio</code> was run on installation of linux with <code>pacstrap</code>.

If you have a custom system (RAID, LVM, ...), modify mkinitcpio.conf and run:

<pre>
mkinitcpio -p linux
</pre>

####    Root password

To set the root password run:

<pre>
passwd
</pre>

####    Boot loader

There are several boot loaders. This guide uses <code>systemd-boot</code> since it's already installed.

To install run:

<pre>
bootctl --path=/boot install
</pre>

To configure you have to create/edit <code>/boot/loader/loader.conf</code> and then add the entries necessary.

First:

<pre>
nano /boot/loader/loader.conf
</pre>

<pre>
default         <i>arch</i>
timeout         <i>0</i>
console-mode    <i>max</i>
</pre>

And finally:

<pre>
nano /boot/loader/entries/arch.conf
</pre>

<pre>
title   <i>Arch Linux</i>
linux   <i>/vmlinuz-linux</i>
initrd  <i>/intel-ucode.img</i>
initrd  <i>/initramfs-linux.img</i>
options root=LABEL=<i>YourRootLabel</i> rw <i>quiet loglevel=3 vga=current</i>
</pre> 