#Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/gasacchi/.zshrc'

autoload -Uz compinit
compinit

source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh

# Rust
export PATH=~/.cargo/bin:$PATH
# Yarn
export PATH="$(yarn global bin):$PATH"


eval "$(starship init zsh)"

# temp alias
alias ls='exa'
alias ll="ls -l"
alias la="ls -a"
alias lla="ls -la"
alias gscadd="doas xbps-install -Sy"
alias gscsearch="xbps-query -Rs"
alias gscdel="doas xbps-remove -R"
alias v='nvim'

# Rust utility
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
alias gsclinux='cd ~/xxx/.dev/gsclinux'
alias youtube='cd ~/xxx/.dev/youtube'
export EDITOR='nvim'

export PATH="/home/gasacchi/.bin:/home/gasacchi/.yarn/bin:/home/gasacchi/.cargo/bin:/home/gasacchi/.yarn/bin:/home/gasacchi/.cargo/bin:/usr/local/bin:/bin:/usr/bin:/usr/local/sbin:/usr/sbin:/sbin"
