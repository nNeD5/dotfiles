
# Lines configured by zsh-newuser-install
HISTFILESIZE=999999
HISTSIZE=999999
SAVEHIST=999999
HISTFILE=~/.cache/.histfile
setopt extendedglob notify
unsetopt beep
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/ned/.zshrc'

export COLORTERM=truecolor
export TERM='tmux-256color'
export EDITOR='nvim'

path+=('/home/ned/.local/bin')


export GOPATH="$HOME/.config/go"
export GOMODCACHE="$HOME/.config/go/pkg/mod"

export FZF_DEFAULT_OPTS="
    --layout=reverse
    --no-separator
    --border
    --pointer='>'
    --color='current-fg:bold:white'
    --color='current-bg:-1'
    --color='label:bold:#FF935C'
    --color='border:#4893D7'"
