{ config, pkgs, ... }:

{
    imports = [
        ./packages.nix
        ./zsh/zsh.nix
    ];
    # Let Home Manager install and manage itself.
    programs.home-manager.enable = true;

    home.username = "ned";
    home.homeDirectory = "/home/ned";
    home.stateVersion = "23.05"; # don't change


}
