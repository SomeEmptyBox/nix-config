{ config, lib, pkgs, inputs, user, ... }:

{
  imports = [./homeModules];

  home = {
    username = "${user.name}";
    homeDirectory = "/home/${user.name}";
    stateVersion = "24.05";

    sessionVariables = {
      NIXOS_OZONE_WL = 1;
    };
  };

  defaults.enable = true;

  xdg.userDirs = {
    enable = true;
    createDirectories = true;
  };
}
