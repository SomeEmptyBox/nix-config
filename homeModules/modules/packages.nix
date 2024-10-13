{ config, lib, pkgs, ... }:

{
  options.modules.packages = lib.mkEnableOption "enables packages";
  config = lib.mkIf config.modules.packages {

    home.packages = with pkgs; [
      aria2
      celluloid
      cmatrix
      fragments
      komikku
      libreoffice-fresh
      materialgram
      nautilus
      protonvpn-gui
      webcord
    ];

  };
}
