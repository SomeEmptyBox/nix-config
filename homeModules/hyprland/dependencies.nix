{ config, lib, pkgs, ... }:

{
  options.hyprland.dependencies = lib.mkEnableOption "enables dependencies";
  config = lib.mkIf config.hyprland.dependencies {

    home.packages = with pkgs; [
      brightnessctl
      blueman
      clipse
      gnome-keyring
      hyprshot
      networkmanagerapplet
      playerctl
      wl-clipboard
      kdePackages.qt6ct
      kdePackages.qtwayland
      udiskie
    ];

#    services = {
#      blueman-applet.enable = true;
#      gnome-keyring.enable = true;
#      network-manager-applet.enable = true;
#      udiskie.enable = true;
#    };

    wayland.windowManager.hyprland.systemd.variables = ["--all"];

    xdg.portal = {
      enable = true;
      extraPortals = [ pkgs.xdg-desktop-portal-gtk ];
      config.common.default = [ "hyprland" "gtk" ];
    };

  };
}
