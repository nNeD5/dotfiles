# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# End of lines added by compinstall

setopt share_history

# Enable colors and change prompt:
autoload -U colors && colors
# PS1="%B%{$fg[red]%}[%{$fg[yellow]%}%n%{$fg[green]%}@%{$fg[blue]%}%M %{$fg[magenta]%}%~%{$fg[red]%}]%{$reset_color%}$%b "

# Basic auto/tab complete:
autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots)       # Include hidden files.

# Vi mode
# bindkey -e
bindkey -v
autoload -Uz edit-command-line
zle -N edit-command-line
bindkey -M vicmd '^E' edit-command-line
KEYTIMEOUT=1
zle-keymap-select () {
    if [[ $KEYMAP == vicmd ]]; then
        # the command mode for vi
        echo -ne "\e[2 q"
    else
        # the insert mode for vi
        echo -ne "\e[5 q"
    fi
}
precmd_functions+=(zle-keymap-select)
zle -N zle-keymap-select
# precmd_functions+=(_set_beam_cursor)
# zle-line-init() { zle -K viins; _set_beam_cursor }
# zle-line-finish() { _set_block_cursor }
# zle -N zle-line-finish

# Use vim keys in tab complete menu:
bindkey -M menuselect 'h' vi-backward-char
bindkey -M menuselect 'k' vi-up-line-or-history
bindkey -M menuselect 'l' vi-forward-char
bindkey -M menuselect 'j' vi-down-line-or-history
bindkey -v '^?' backward-delete-char
bindkey '^R' history-incremental-search-backward

fancy-ctrl-z () {
  if [[ $#BUFFER -eq 0 ]]; then
    bg
    zle redisplay
  else
    zle push-input
  fi
}
zle -N fancy-ctrl-z
bindkey '^Z' fancy-ctrl-z
bindkey  -s '^F' 'zi\n'

alias cp='cp -r'
alias rm='rmw'
alias ls='lsd'
alias la='lsd -A'
alias lt='lsd --tree'
alias e='$EDITOR'
# alias ee='nvim +"Autosession search"'
alias n='$EDITOR Notes/diary/$(date "+%Y/%W/%d-%m-%y").md'
alias grep='grep --color=auto'
alias uni='cd ~/Work/university/semester11/'
alias headset='bluetoothctl connect 98:67:2E:A8:18:E7 && sleep 1 && bluetoothctl connect 98:67:2E:A8:18:E7'
wl_hist() { wl-clipboard-history -p "$(wl-clipboard-history -l 20 | fzf --with-nth 2.. -d , | cut -d ',' -f1)"; }
# alias mouse='bluetoothctl connect 98:67:2E:A8:18:E7 && sleep 1 && bluetoothctl connect 98:67:2E:A8:18:E7'

alias t='tmuxinator start today'
alias s='tmux-session'
alias b='blobdrop'
alias mem="df -lh -t ext4"
function ch() { curl cheat.sh/"$1" | bat; }
function en() { cli-dictionary "$1" en; }
function o() { xdg-open $1 & disown ;}
function tpython() { mypy "$1" && python "$1"; }
function en() { cli-dictionary "$1" en; }
function batt() {
    laptop_batt=$(cat /sys/class/power_supply/BAT0/capacity)
    laptop_status=$(cat /sys/class/power_supply/BAT0/status)
    keyboard_batt=$(bluetoothctl info "F0:DE:7F:BA:A4:14"  | grep "Battery Percentage: " | awk '{print $4}' | tr -d "(;)")
    echo "laptop: ${laptop_batt}% ${laptop_status}"
    echo "keyboard(corne): ${keyboard_batt}%"
}


eval "$(zoxide init zsh)"
source <(fzf --zsh)

# >>> mamba initialize >>>
# !! Contents within this block are managed by 'micromamba shell init' !!
export MAMBA_EXE='/home/ned/.local/bin/micromamba';
export MAMBA_ROOT_PREFIX='/home/ned/.local/share/mamba';
__mamba_setup="$("$MAMBA_EXE" shell hook --shell zsh --root-prefix "$MAMBA_ROOT_PREFIX" 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__mamba_setup"
else
    alias micromamba="$MAMBA_EXE"  # Fallback on help from micromamba activate
fi
unset __mamba_setup
# <<< mamba initialize <<<


# Disable underline for file name
(( ${+ZSH_HIGHLIGHT_STYLES} )) || typeset -A ZSH_HIGHLIGHT_STYLES
ZSH_HIGHLIGHT_STYLES[path]=none
ZSH_HIGHLIGHT_STYLES[path_prefix]=none

[ -f "/usr/share/zsh/plugins/fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh" ] &&
    source "/usr/share/zsh/plugins/fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
source /usr/share/zsh-theme-powerlevel10k/powerlevel10k.zsh-theme
[[ -f ~/.p10k.zsh ]] && source ~/.p10k.zsh
