# work
alias p10="sshpass -p 'l;jyfnfy' ssh -p 2210 calc@195.178.145.33 -Y -o 'ServerAliveInterval 60'"
alias hometiger="sshpass -p 'l;jyfnfy' ssh -p 2210 calc@95.67.26.116 -Y -o 'ServerAliveInterval 60'"
alias hometiger_sftp="sshpass -p 'l;jyfnfy' sftp -P 2210 calc@95.67.26.116"

# system
alias osc="sudoedit /etc/nixos/configuration.nix"
alias osu="sudo nixos-rebuild switch"

alias batt="cat /sys/class/power_supply/BAT0/capacity"

# nvim
# alias vim='nvim'
alias v="$EDITOR"

# ls
alias ls='lsd'
alias la='ls -A'
alias lt='ls --tree'

# grep
alias grep='grep --color=auto'

# rm
alias rm='trash'

# git
alias g='git'
alias gcm='git commit -m'
alias gph='git push'
alias gst='git status'

# pacman & aur
alias pinst='sudo pacman -S'
alias pdel='sudo pacman -Rsu'

alias help='tldr --color=always'
# fzf
alias fe="ffile $EDITOR"
alias fcd="fdir cd"
alias fhelp='tldr --list | fzf --preview "tldr {1} --color=always" --preview-window=right,70% | xargs tldr'

# fd
alias fd="fd --hidden --exclude .local/state/nvim/undo/\
             --exclude .config/nvim/undodir"

# OpenFaom
alias of='source /opt/OpenFOAM/openfoam/etc/bashrc'
alias paraFoam='paraFoam -builtin'

# git
alias ga='git add'
alias gcm='git commit -m'
alias gc='git clone'

alias camera='mpv av://v4l2:/dev/video0 --profile=low-latency --untimed'
