
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
export EDITOR='/home/ned/.local/bin/nvim'

path+=('/home/ned/.local/bin')


export GOPATH="$HOME/.config/go"
export GOMODCACHE="$HOME/.config/go/pkg/mod"
export XDG_DATA_DIRS="${XDG_DATA_DIRS}:${HOME}/.local/share/flatpak/exports/share/applications"
export PYTHONPATH="${HOME}/Work/institute/vasp:${PYTHONPATH}"



export FZF_DEFAULT_OPTS="
    --layout=reverse
    --no-separator
    --border
    --pointer=''
    --color='current-bg:-1'
    --color='prompt:#f6c177'
    --color='current-fg:bold:#EBBCBA'
    --color='current-hl:bold:#EB6F92'
    --color='hl:#EB6F92'
    --color='label:bold:#f6c177'
    --color='border:#eb6f92'"

