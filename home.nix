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

  programs.git = {
  	enable = true;
  	userName = "${user}";
  	userEmail = "SomeEmptyBox@proton.me";
  	extraConfig.init.defaultBranch = "main";
  };

  xdg.userDirs = {
    enable = true;
    createDirectories = true;
  };
}