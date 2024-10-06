{ config, lib, pkgs, inputs, ... }:

{
  imports = [ inputs.ags.homeManagerModules.default ];

  options.hyprland.ags = lib.mkEnableOption "ags";
  config = lib.mkIf config.hyprland.ags {

    programs.ags = {
      enable = true;
      configDir = ./ags;
    };

  };
}
