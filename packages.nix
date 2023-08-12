{ config, lib, pkgs, ... }:
{
home.packages = [
    pkgs.bluez
    pkgs.alacritty
    (lib.hiPrio pkgs.gcc)
    (lib.lowPrio pkgs.clang)
    pkgs.grim
    pkgs.slurp
    pkgs.swaybg
    pkgs.nix-index
    pkgs.poetry
    pkgs.mako
    pkgs.inotify-tools
    pkgs.acpid
    pkgs.socat
    pkgs.file
    pkgs.jq # json parser
    pkgs.libnotify
    pkgs.unar # archivator
    pkgs.killall
    pkgs.eww-wayland
    pkgs.telegram-desktop
    pkgs.tldr # help command
    pkgs.tmux
    pkgs.wl-clipboard
    pkgs.ripgrep
    pkgs.alacritty
    pkgs.imv
    pkgs.git
    pkgs.brave
    pkgs.lsd
    pkgs.rofi-wayland
    pkgs.fd
    pkgs.zathura
    pkgs.trash-cli
    pkgs.fzf
    pkgs.gotop
    pkgs.playerctl
    pkgs.sshpass
    # pkgs.xdragon # drag and drop in nnn
    pkgs.python311
    pkgs.pulsemixer

    pkgs.mpv

    # Email client setup
    # pkgs.mutt-wizard
    # pkgs.neomutt
    # pkgs.isync
    # pkgs.msmtp
    # pkgs.pass
    # pkgs.gettext
    # pkgs.notmuch
    # pkgs.abook
    # pkgs.urlview

    # pkgs.virt-manager
    # pkgs.cron
];
}
