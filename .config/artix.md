
* Admin
  - opendoas

* Kernelbuild
  - base-devel
  - xmlto
  - kmod
  - inetutils
  - bc
  - libelf
  - git

* Editor
```
curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
# open nvim and :PlugInstall
```
  - neovim

* Network Support
  - wpa_supplicant
  - wpa_supplicant-openrc
  - dhcpcd
  - dhcpcd-openrc

* Xorg Minimal
  - xorg-server
  - xorg-xinit
  - xf86-video-intel
  - xorg-xbacklight
  - xorg-xrandr

* Utility
  - unzip
  - unrar
  - android-file-transfer

* Create user dir
  - xdg-user-dirs
  ```
  xdg-user-dirs-update
  ```

* Sound Support
  - amixer

* Preferable Font
```
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/JetBrainsMono.zip
mkdir -p.local/share/fonts/JetBrainMono
mv ~/JetBrainMono.zip ./local/share/fonts/JetBrainMono
unzip JeBrainMono.zip
fc-cache -f -v
fc-list | grep Jet
```
* AUR
```
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
cd ..
rm yay -rf

* Command line Utility Rust (install using yay)
  - exa
  - bat
  - fd
  - dust-bin
  - ripgrep
  - procs-bin
  - sd
  - tokei
  - bottom
  - tldr
  - hyperfine

```
* Browser
  - Brave #brave-beta-bin
* Youtube
  - obs-studio
* Development
  - nodejs
  - yarn

* Media
  - vlc

* Window manager setup
  - picom
  - nitrogen
  ** notification
    - dunst
      - libnotify
      - dbus (optional on artix)


** install Dwm, st, dmenu, dwmblocks
```
doas make clean install
```

* Download utility
  - wget
  - curl
  - uget

* Necessary package
  - ntfs-3g #for mounting ntfs file file system (optional on artix)


