{
  config,
  lib,
  pkgs,
  inputs,
  user,
  ...
}:

{
  imports = [ ./homeModules ];

  home = {
    username = "${user.name}";
    homeDirectory = "/home/${user.name}";
    stateVersion = "24.05";
    sessionVariables.NIXOS_OZONE_WL = 1;
  };

  cliPrograms.enable = true;

    wayland.windowManager.hyprland = {
      enable = true;
      systemd.variables = [ "--all" ];
    };
 
  modules = {
    enable = true;
    stylix = false;
  };

  programs = {
    fastfetch.enable = true;
    fish.enable = true;
    firefox.enable = true;
    kitty.enable = true;
  };

  home.packages = with pkgs; [
    aria2
    celluloid
    chromium
    cmatrix
    discord
    fragments
    komikku
    libreoffice-fresh
    nautilus
    materialgram
    protonvpn-gui
    telegram-desktop
  ];

  xdg.userDirs = {
    enable = true;
    createDirectories = true;
  };

  programs.home-manager.enable = true;
}
