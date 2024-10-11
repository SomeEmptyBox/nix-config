{ config, lib, pkgs, inputs, user, ... }:

{
  imports = [ ./homeModules ];

  home = {
    username = "${user.name}";
    homeDirectory = "/home/${user.name}";
    stateVersion = "24.05";
  };

  cliPrograms.enable = true;
  guiPrograms.enable = true;

  hyprland = {
    enable = true;
    hyprpaper = false;
  };

  modules.enable = true;

  xdg.userDirs = {
    enable = true;
    createDirectories = true;
  };

  programs.home-manager.enable = true;
}
