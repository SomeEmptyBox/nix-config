{ config, lib, pkgs, inputs, ... }:

{
  imports = [ inputs.nixos-cosmic.nixosModules.default ];

  options.desktopManager.cosmic.enable = lib.mkEnableOption "cosmic";
  config = lib.mkIf config.desktopManager.cosmic.enable {

    services.desktopManager.cosmic.enable = true;

  };
}
