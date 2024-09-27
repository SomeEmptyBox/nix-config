{ config, lib, pkgs, inputs, user, ... }:

{
  imports = [./homeModules/default.nix];

  home = {
    username = "${user.name}";
    homeDirectory = "/home/${user.name}";
    stateVersion = "24.05";

    sessionVariables = {
      NIXOS_OZONE_WL = 1;
    };
  };

  programs.git = {
    enable = true;
    userName = "${user.name}";
    userEmail = "${user.email}";
    extraConfig.init.defaultBranch = "main";
  };

  xdg.userDirs = {
    enable = true;
    createDirectories = true;
  };
}
