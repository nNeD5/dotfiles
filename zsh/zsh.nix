{ lib, pkgs, config, ... }:
let
    config_dir = ".config/home-manager/zsh";
    home = "${config.home.homeDirectory}";
in
{
    programs.zsh = {
        enable = true;
        dotDir = "${config_dir}/zsh_output";
        history.path = "${home}/${config_dir}/zsh_output/zsh_history";

        syntaxHighlighting.enable = true;
        enableAutosuggestions = true;
        enableCompletion = true;

        envExtra = ''
            ${builtins.readFile "${home}/${config_dir}/zshenv"}
        '';
        initExtraFirst = ''
            ${builtins.readFile "${home}/${config_dir}/zshrc"}
        '';
        initExtra = ''
            ${builtins.readFile "${home}/${config_dir}/zshrc"}
            ${builtins.readFile "${home}/${config_dir}/aliases"}
            ${builtins.readFile "${home}/${config_dir}/functions"}
        '';

        plugins = [
            {
                name = "zsh-powerlevel10k";
                src = pkgs.fetchFromGitHub {
                        owner = "romkatv";
                        repo = "powerlevel10k";
                        rev = "v1.19.0";
                        sha256 = "sha256-+hzjSbbrXr0w1rGHm6m2oZ6pfmD6UUDBfPd7uMg5l5c";
                };
                file = "powerlevel10k.zsh-theme";
            }
        ];
    };
}
