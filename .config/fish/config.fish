# Hide welcome message
set fish_greeting
# Yarn
set -gx PATH "$HOME/.yarn/bin:$PATH"
set -gx PATH "$HOME/.local/bin:$PATH"
set -gx NVIM_ROOT "$HOME/.config/nvim"


# temp alias
alias ls='exa'
alias ll="ls -l"
alias la="ls -a"
alias lla="ls -la"

# System
alias gscupdate="doas xbps-install -Suv"
alias gscadd="doas xbps-install -Sy"
alias gscsearch="xbps-query -Rs"
alias gscdel="doas xbps-remove -R"
alias gscclean="doas xbps-remove -Oo"
alias gscoff="doas poweroff"
alias gscreboot="doas reboot"

# Editor
alias v=nvim

# Tmux
alias tm='tmux'
alias tmn='tmux new-session -s'
alias tmk='tmux kill-session -t'
alias tml='tmux ls'
alias tma='tmux attach-session -t'

# Command Line utility
alias cp='cp -v'
alias mv='mv -v'
alias rm='rm -v'
alias du='dust'
alias top='btm'
alias loc='tokei'
alias cat='bat'
alias sed='sd'
alias lgit='lazygit'

alias anime='cd ~/xxx/.anime/.safe'

# SET editor
set -gx EDITOR nvim

starship init fish | source
