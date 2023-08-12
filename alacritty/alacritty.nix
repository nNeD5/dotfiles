{   lib, pkgs, config, ... }:
let
    config_path = "${config.home.homeDirectory}/.config/home-manager/alacritty/alacritty.yml";

    # Thansk:
    # https://github.com/paulyoung/pub2nix/blob/0c7ecca590fcd1616db8c6468f799ffef36c85e9/yaml.nix#L4

    fromYAML = yaml: builtins.fromJSON (
        builtins.readFile (
        pkgs.runCommand "from-yaml"
            {
            inherit yaml;
            allowSubstitutes = false;
            preferLocalBuild = true;
            }
            ''
            ${pkgs.remarshal}/bin/remarshal  \
                -if yaml \
                -i <(echo "$yaml") \
                -of json \
                -o $out
            ''
        )
    );

  readYAML = path: fromYAML (builtins.readFile path);


  mkPersistentLink = path: pkgs.runCommand "persistent-link" {} ''
    ln -s /nix/persistent/adisbladis/${path} $out
  '';
in
{
    programs.alacritty = {
        enable = true;
        settings = readYAML (config_path);
    };

    home.file.".config/alacritty/themes".source = "${config.home.homeDirectory}/.config/home-manager/alacritty/themes";
}
