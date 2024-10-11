{ config, lib, pkgs, inputs, ... }:

{
  options.desktopManager.hyprland.enable = lib.mkEnableOption "enables hyprland";
  config = lib.mkIf config.desktopManager.hyprland.enable {

    programs.hyprland = {
      enable = true;
#      package = inputs.hyprland.packages.${pkgs.stdenv.hostPlatform.system}.hyprland;
#      portalPackage = inputs.hyprland.packages.${pkgs.stdenv.hostPlatform.system}.xdg-desktop-portal-hyprland; 
    };

  };
}
