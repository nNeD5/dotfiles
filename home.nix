{ config, pkgs, ... }:

{
    imports = [
        ./packages.nix
        ./zsh/zsh.nix
        ./alacritty/alacritty.nix
    ];
    # Let Home Manager install and manage itself.
    programs.home-manager.enable = true;

    home.username = "ned";
    home.homeDirectory = "/home/ned";
    home.stateVersion = "23.05"; # don't change


#     services.gpg-agent = {
#       enable = true;
#       defaultCacheTtl = 1800;
#       enableSshSupport = true;
#     };

}
