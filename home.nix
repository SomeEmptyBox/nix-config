{ config, lib, pkgs, inputs, user, ... }:

{
  imports = [./homeModules/default.nix];

  home = {
    username = "${user}";
    homeDirectory = "/home/${user}";
    stateVersion = "24.05";

    sessionVariables = {
      NIXOS_OZONE_WL = 1;
    };
  };

  xdg.userDirs = {
    enable = true;
    createDirectories = true;
  };

}
