{ config, lib, pkgs, ... }:

{
  options.modules.packages = lib.mkEnableOption "enables packages";
  config = lib.mkIf config.modules.packages {

    home.packages = with pkgs; [
      aria2
      betterdiscord-installer
      celluloid
      cmatrix
      discord
      fragments
      komikku
      libreoffice-fresh
      nautilus
      protonvpn-gui
      telegram-desktop
    ];

  };
}
