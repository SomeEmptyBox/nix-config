{ config, lib, pkgs, inputs, ... }:

{
  options.desktopManager.cachix.enable = lib.mkEnableOption "cachix";
  config = lib.mkIf config.desktopManager.cachix.enable {

    nix.settings = {
      
      substituters = [
        "https://hyprland.cachix.org"
        "https://cosmic.cachix.org"
      ];

      trusted-public-keys = [
        "hyprland.cachix.org-1:a7pgxzMz7+chwVL3/pzj6jIBMioiJM7ypFP8PwtkuGc="
        "cosmic.cachix.org-1:Dya9IyXD4xdBehWjrkPv6rtxpmMdRel02smYzA85dPE="
      ];
    };

  };
}
