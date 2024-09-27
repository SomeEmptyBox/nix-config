{ config, lib, ... }:

{
  imports = [
    #inputs.hyprland.homeManagerModules.default
    ./animations.nix
    ./dependencies.nix
    ./hyprpaper.nix
    ./keybinds.nix
    #./plugins.nix
    ./settings.nix
    ./windowrules.nix
  ];

  options.hyprland.enable = lib.mkEnableOption "hyprland";
  config = lib.mkIf config.hyprland.enable {

    hyprland = {
      dependencies = lib.mkDefault true;
      hyprpaper = lib.mkDefault true;
      settings = lib.mkDefault true;
    };

  };
}
