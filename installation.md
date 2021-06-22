### Set keyboard layout
```sh
loadkeys dvorak
```

### Check if system use uefi
```sh
ls /sys/firmware/efi/efivars
```
if exits then your system use uefi otherwise use DOS / Legacy boot
###

### Connect to internet
```sh
ip link # Check available device

# if use ethernet connection you should have internet
# check connection
ping google.com

# if use wifi make sure to unblock it
rfkill list
rfkill unblock wifi # if blocked

# use iwctl for wifi connection
iwctl
# command on iwctl REPL
help # for help
device list # for device list
station "device" list # scan device, you have to specify your actual device you using
station "device" get-networks # list available network
station "device" connect SSID # connect to network, with SSID
exit # to exit the REPL
# check your connection with ping
ping google.com

```
### Update the system clock
```sh
timedatectl set-ntp true
```

### Partition the Disks (you can use any Partition cli)
#### MBR for Legacy BIOS

| Mount point| Partition | Partition type | Size                       |
| [SWAP]     | /dev/sda1 | Linux Swap     | more than 512              |
| /mnt       | /dev/sda2 | Linux          | reminder of the disk space |

#### GPT for UEFI
| Mount point   | Partition | Partition type | Size                       |
| /mnt/boot/efi | /dev/sda1 | EFI            | at least 260               |
| [SWAP]        | /dev/sda2 | Linux Swap     | more than 512              |
| /mnt          | /dev/sda3 | Linux          | reminder of the disk space |

```sh
lsblk # or use fdisk -l

fdisk /dev/sda # you have to change the disk in this case /dev/sda your may different
# use m on repl for help
```

### Format the disks
```sh
mkfs.fat -F 32 /dev/sda1 # for uefi
mkswap /dev/sda2 # make swap
mkfs.ext4 /dev/sda3 # for uefi
```

### Mount the disks
```sh
mount /dev/sda3 /mnt # mont main Partition to /mnt
mkdir /mnt/boot/efi # make dir for uefi
mount /dev/sda1 /mnt/boot/efi
```

### Turn on swap
```sh
swapon /dev/sda2
```

### Use Reflector for searching the fastest mirrorlist
```sh
# use reflector to list 5 fastest mirrorlist and add to mirrorlist file
reflector --verbose --latest 5 --sort rate --save /etc/pacman.d/mirrorlist
````

### Bootstrap the system 
```sh
pacstrap /mnt base linux linux-firmware vim # vim is optional
```

### Generate file system table
```sh
genfstab -U /mnt /mnt/etc/fstab # generate with -U for uuid
```

### Change root
```sh
arch-chroot /mnt
```

### Change localtime

```sh
ln -sf /usr/share/zoneinfo/Asia/Jakarta /etc/locatime
```
```sh
hwclock --systohc
```

### Change localization

edit `/etc/local.gen` and uncomment your location
```sh
vim /etc/locale.gen
locale-gen
```
create `/etc/locale.conf`
```sh
LANG=en_US.UTF-8
```
if you change the keyboard layout create `/etc/vconsole.conf`
```sh
KEYMAP=dvorak
```
### Setup the Network
create hostname

```sh
vim /etc/hostname # fill with your hostname
```
edit hosts
```sh
vim /etc/hosts
```

with:

```sh
127.0.0.1 localhost
::1       localhost
127.0.1.1 archgsc.localdomain     archgsc # must be same with your hostname
```

#### Network manager
for easy access to wireless connection
```sh
pacman -S networkmanager
```
##### Enable service
```sh
systemctl enable NetworkManager
```

### Bootloader
```sh
pacman -S intel-ucode # install microcode for intel / AMD
pacman -S grub efibootmgr # if use uefi
grub-install /dev/sda # for Legacy BIOS
# for UEFI
grub-install --target=x86_64-efi --efi-directory /boot/efi /dev/sda \
--bootloader-id=GRUB

grub-mkconfig -o /boot/grub/grub.cfg
```

### Create Root password
```sh
passwd
```

### Reboot
```sh
exit # exit chroot
umount -a # unmount all drive
reboot
```
