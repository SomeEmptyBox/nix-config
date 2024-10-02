{ config, lib, pkgs, inputs, user, ... }:

{
  imports = [ ./homeModules ];

  home = {
    username = "${user.name}";
    homeDirectory = "/home/${user.name}";
    stateVersion = "24.05";

    sessionVariables = {
      NIXOS_OZONE_WL = 1;
    };
  };

  cliPrograms.enable = true;
  guiPrograms.enable = true;
  hyprland.enable = true;
  modules.enable = true;

  xdg.userDirs = {
    enable = true;
    createDirectories = true;
  };

  programs.home-manager.enable = true;
}
