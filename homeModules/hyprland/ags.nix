{ config, lib, pkgs, inputs, ... }:

{
  imports = [ inputs.ags.homeManagerModules.default ];

  options.hyprland.ags.enable = lib.mkEnableOption "ags";
  config = lib.mkIf config.hyprland.ags.enable {

    programs.ags = {
      enable = true;
      configDir = ./ags;
      extraPackages = with pkgs; [ gtksourceview webkitgtk accountsservice ];
    };

  };
}
