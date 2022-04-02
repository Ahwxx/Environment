fpath+=${ZSH_CUSTOM:-${ZSH:-~/.oh-my-zsh}/custom}/plugins/zsh-completions/src
export ZSH="$HOME/.oh-my-zsh"

# ZSH_THEME="dracula"
PROMPT=" %~ "

ENABLE_CORRECTION="true"

# plugins=(git)

# source $ZSH/oh-my-zsh.sh

alias conf="nvim ~/.zshrc"
alias btw="neofetch"
alias launchbar="bash ~/.xmonad/bin/launchbar.sh"
alias poly="nvim ~/.config/i3/polybar/config"
alias lc="colorls -lA --sd"
alias ls="colorls"
alias lf="colorls"
alias clock='tty-clock -c -C 7 -r -f "%A, %B, %d"'
alias wal="feh --bg-fill"
alias rel="xrdb merge ~/.Xresources && kill -USR1 $(pidof st)"
alias rm-underscore="mmv '_*.JPG' '#1.JPG'"

# eval "$(starship init zsh)"

cd ~
clear

neofetch

source /home/prifixy/.antigen.zsh

antigen use oh-my-zsh

antigen bundle git
antigen bundle pip
antigen bundle command-not-found

antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle zsh-users/zsh-completions

# Tell Antigen that you're done.
antigen apply
export PATH="$PATH:$HOME/.spicetify"
