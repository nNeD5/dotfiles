#
# ~/.zshprofile
#

export ZDOTDIR="$HOME/.config/zsh"

export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_CACHE_HOME="$HOME/.cache"

export WGETRC="$XDG_CONFIG_HOME/wgetrce"
export XINITRC="$XDG_CONFIG_HOME/X11/xinitrc"
export XSERVERRC="$XDG_CONFIG_HOME/X11/xserverrc"

export TZ="Europe/Kiev"
export LC_ALL=C
export LANG="en_US.UTF-8";
export LC_ADDRESS="uk_UA.UTF-8";
export LC_IDENTIFICATION="uk_UA.UTF-8";
export LC_MEASUREMENT="uk_UA.UTF-8";
export LC_MONETARY="uk_UA.UTF-8";
export LC_NAME="uk_UA.UTF-8";
export LC_NUMERIC="uk_UA.UTF-8";
export LC_PAPER="uk_UA.UTF-8";
export LC_TELEPHONE="uk_UA.UTF-8";
export LC_TIME="en_US.UTF-8";

export EDITOR="nvim"
export VISUAL="nvim"
export BROWSER="brave"

export TERM="xterm-256color"

# History in cache directory:
export HISTSIZE=10000
export SAVEHIST=10000
export HISTFILE="$HOME/.cache/zsh_history"
# setopt SHARE_HISTORY
# setopt appendhistory

# QT
export QT_AUTO_SCREEN_SET_FACTOR=0
export QT_SCALE_FACTOR=1
export QT_FONT_DPI=96
export QT_QPA_PLATFORMTHEME="qt5ct"

# Gtk
export GTK2_RC_FILES="$XDG_CONFIG_HOME"/gtk-2.0/gtkrc
export GDK_SCALE=1
export GDK_DPI_SCALE=1
# export GTK_THEME="Nordic"

# Colored man
export LESS_TERMCAP_mb=$(tput bold; tput setaf 2) # green
export LESS_TERMCAP_md=$(tput bold; tput setaf 2) # green
export LESS_TERMCAP_so=$(tput bold; tput rev; tput setaf 3) # yellow
export LESS_TERMCAP_se=$(tput rmso; tput sgr0)
export LESS_TERMCAP_us=$(tput smul; tput bold; tput setaf 1) # red
export LESS_TERMCAP_me=$(tput sgr0)


# fzf
export FZF_DEFAULT_OPTS="--height 40% --layout=reverse --border"

# OpenFoam


# Path to scripts
path+=("$HOME/.config/zsh/scripts/")
path+=("$HOME/.local/bin/")
export PATH

echo "TEST"
