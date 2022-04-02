# bashrc
alias lc='colorls -lA --sd'

[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

[ -f ~/.fzf.bash ] && source ~/.fzf.bash

# draw horiz line under prompt
draw_line() {
  local COLUMNS="$COLUMNS"
  while ((COLUMNS-- > 0)); do
    printf '\e[30m\u2500'
  done
}

# my prompt
PS1="\[\033[32m\]  \[\033[37m\]\[\033[34m\]\w \[\033[0m\]"
PS2="\[\033[32m\]  > \[\033[0m\]"

PATH=$PATH:~/.local/bin
PATH=$PATH:~/.node_modules/bin
PATH=$PATH:~/.volta/bin
PATH=$PATH:~/.cargo/bin

# bash history
HISTSIZE=
HISTFILESIZE=

# my aliases

alias wal="feh --bg-fill"

# sx xinitrc commands
alias ttc='tty-clock -c -C 7 -r -f "%A, %B %d"'

export FZF_DEFAULT_OPTS='
  --color fg:#646a76
  --color bg+:#7797b7,fg+:#2c2f30,hl:#D8DEE9,hl+:#26292a,gutter:#3a404c
  --color pointer:#373d49,info:#606672
  --border
  --color border:#646a76'

source ~/.fzf-tab-completion/bash/fzf-bash-completion.sh
bind -x '"\t": fzf_bash_completion'

# pmem |grep -E "picom|Xorg|bspwm|sxhkd"
. "$HOME/.cargo/env"
export PATH="$PATH:$HOME/.spicetify"
