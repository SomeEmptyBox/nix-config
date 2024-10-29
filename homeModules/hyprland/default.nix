{
  config,
  lib,
  pkgs,
  inputs,
  ...
}:

{
  imports = [
    inputs.hyprland.homeManagerModules.default
    ./animations.nix
    ./dependencies
    ./keybinds.nix
    ./settings.nix
    ./windowrules.nix
  ];

  options.hyprland.default.enable = lib.mkEnableOption "enables dependencies";
  config = lib.mkIf config.hyprland.default.enable {

    wayland.windowManager.hyprland = {
      enable = true;
      systemd.variables = [ "--all" ];
    };

    home.packages = with pkgs; [
      brightnessctl
      clipse
      hyprshot
      playerctl
      polkit_gnome
      wl-clipboard
      kdePackages.qt6ct
      kdePackages.qtwayland
    ];

    programs.wofi.enable = true;

    services = {
      blueman-applet.enable = true;
      gnome-keyring.enable = true;
      network-manager-applet.enable = true;
      udiskie.enable = true;
    };

    xdg.portal = {
      enable = true;
      extraPortals = [ pkgs.xdg-desktop-portal-gtk ];
      config.common.default = [
        "hyprland"
        "gtk"
      ];
    };

  };
}
