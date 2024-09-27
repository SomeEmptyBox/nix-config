{ config, lib, pkgs, inputs, ... }:

{
  imports = [ inputs.catppuccin.nixosModules.catppuccin ];

  options.theme.enable = lib.mkEnableOption "catppuccin";
  config = lib.mkIf config.theme.enable {

    catppuccin = {
      enable = true;
      accent = "blue";
      flavor = "mocha";
    };

  };
}
