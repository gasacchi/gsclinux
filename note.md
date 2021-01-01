- Post install void linux

  - X11 ( minimal setup )
    - xorg-minimal: minimal setup for running xserver
    - xinit: using startx
    - xorg-fonts: require for some program
    - xf86-video-intel: video driver for intel
    - setxkbmap: changing layout on xserver session
    - xbacklight: set xbacklight
    - nitrogen: changing wallpaper; alternative "feh"
    - picom: window composer;

  - etc
    - linux-headers
    - lm_sensors: temperature and fan info
    - doas: openbsd port alternative sudo
  
  - shell and costumization
    - fishshell
    - startship

  - Sound with ( Pulseaudio )
    - pulseaudio
    - pamixer: pulseaudio cli app
    - ncpamixer: pulseaudio mixer on terminal

  - Version control
    - git

  - Text Editor
    - Neovim; alternative "vim"

  - Http Request
    - wget
    - curl

  - Mounting external harddrive with (ntfs)
    - ntfs-3g

  - System Info
    - ufetch alternative; neofetch

  - Notification
    - libnotify
    - dunst
    - dbus

  - Productivity
    - obs
    - kdenlive
    - gimp
    - chromium
    - mdp: presentation on terminal

  - Droid cam ( webcam with smartphone )
    - v4l2loopback
    - droid cam ( build from source )
  
  - Rust command line utility
    - dust (du)
    - bat (cat)
    - exa (ls)
    - tokei (line of code)
    - bottom (top)
      
  - Fonts
    - JetBrainsMono Nerd Font
  
  - Window Manager (DWM) build from source
    - dwm
    - dmenu
    - dwmblocks
    - st 

    ** for compile dwm
      - base-devel, libX11-devel, libXft-devel libXinerama-devel

    ** for compile st terminal
      - harfbuzz-devel
