
### Development tools

- git (version control)
- base-devel (base app for build)
- linux-headers (linux dev files)

### Personal Development Tools
- neovim-nightly-bin (nightly build neovim)
- kitty (terminal emulator)
- tmux

### AUR Helper

- yay
    - install
    ```sh
      git clone https://aur.archlinux.org/yay.git 
      cd yay
      makepkg -si
     ```

### System Utils

- fish (alt shell)
- xdg-user-dirs (manage user directory)
- reflector (generate fastest mirror list)
    - run `reflector --verbose --protocol https --latest 5 --sort rate --save /etc/pacman.d/mirrorlist`
- opendoas (sudo alt "remove sudo)
    - config `permit persist :wheel` in /etc/doas.conf
    - run `yay --sudo doas --sudoflags -- --save`
- wget / uget (download files)
- unzip & unrar (unzip or unrar .rar and .zip files)

#### Command line utils
- exa (ls alt)

### Fonts
```sh
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/JetBrainsMono.zip
mkdir -p ~/.local/share/fonts/JetBrainsMono
mv JetBransMono ~/.local/share/fonts/JetBrainsMono
cd ~/.local/share/fonts/JetBrainsMono
unzip JetBrainsMono.zip
rm JetBrainsMono.zip
fc-cache -v -f
fc-list grep JetBrain
```
### Window manager and Utils

- awesome (awosome window manager)
- xorg (x11 display server)
- xf86-video-intel (video driver for intel)
- xorg-xinit (startx)
- nitrogen (wallpaper manager)
- picom (compositor)
- rofi (app launcher)



### Media

- brave (free ads browser)
- discord (chatting platform)
- vlc (video player)
