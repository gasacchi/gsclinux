# Hide welcome message
set fish_greeting
# Yarn
set -gx PATH "$HOME/.yarn/bin:$PATH"
set -gx PATH "$HOME/.local/bin:$PATH"
set -gx PATH "$HOME/.dotnet/tools:$PATH"
set -gx NVIM_ROOT "$HOME/.config/nvim"


# temp alias
alias ls='exa'
alias ll="ls -l"
alias la="ls -a"
alias lla="ls -la"

# System Pacman & Yay


# editor
alias v='nvim'

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

# TokyoNight Color Palette
set -l foreground c0caf5
set -l selection 364A82
set -l comment 565f89
set -l red f7768e
set -l orange ff9e64
set -l yellow e0af68
set -l green 9ece6a
set -l purple 9d7cd8
set -l cyan 7dcfff
set -l pink bb9af7

# Syntax Highlighting Colors
set -g fish_color_normal $foreground
set -g fish_color_command $cyan
set -g fish_color_keyword $pink
set -g fish_color_quote $yellow
set -g fish_color_redirection $foreground
set -g fish_color_end $orange
set -g fish_color_error $red
set -g fish_color_param $purple
set -g fish_color_comment $comment
set -g fish_color_selection --background=$selection
set -g fish_color_search_match --background=$selection
set -g fish_color_operator $green
set -g fish_color_escape $pink
set -g fish_color_autosuggestion $comment

# Completion Pager Colors
set -g fish_pager_color_progress $comment
set -g fish_pager_color_prefix $cyan
set -g fish_pager_color_completion $foreground
set -g fish_pager_color_description $comment

# SET editor
set -gx EDITOR nvim

starship init fish | source

