{ config, lib, pkgs, ... }:

{
  options.modules.programs = lib.mkEnableOption "programs";
  config = lib.mkIf config.modules.programs {

    programs = {
      bat.enable = true;
      btop.enable = true;
      imv.enable = true;
      obs-studio.enable = true;
      yazi.enable = true;
    };

  };
}
