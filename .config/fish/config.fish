if status is-interactive
    # Commands to run in interactive sessions can go here
    set -U fish_greeting ""

    alias btrfortune='fortune -a -s | head -n 1 | figlet | lolcat'
    alias fortunecow='fortune -a -s | head -n 1 | cowsay | lolcat'
    
    alias l='exa -lahF --color=always --icons --sort=size --group-directories-first'
    alias ls='exa -lhF --color=always --icons --sort=size --group-directories-first'
    alias lst='exa -lahFT --color=always --icons --sort=size --group-directories-first'
    
    alias ser='ssh jaap@lmao.jaapvd.nl -p 9123'
    alias conf='nvim ~/.config/fish/config.fish'
    alias btw='neofetch'
    alias lc='colorls -lA --sd'
    alias ls='colorls'
    alias lf='colorls'
    alias clock='tty-clock -c -C 7 -r -f "%A, %B, %d"'
    alias wal='feh --bg-fill'
    alias rel='xrdb merge ~/.Xresources && kill -USR1 $(pidof st)'
    alias rm-underscore="mmv '_*.JPG' '#1.JPG'"
    alias unfuck-wifi='iwgtk'

    alias matrix='unimatrix -f -l ocCgGkS -s 96'
    alias clock='tty-clock -sct -C 4'
    alias pipes='pipes -p 5 -R -t 1 -r 0'
  #colorscript -r
end
export PATH="$PATH:$HOME/.spicetify"
