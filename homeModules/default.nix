{ config, lib, ... }:

{
  imports = [
    ./cliPrograms
    ./guiPrograms
    ./hyprland
    ./modules
  ];

  options = {
    cliPrograms.enable = lib.mkEnableOption "cliPrograms";
    hyprland.enable = lib.mkEnableOption "hyprland";
    modules.enable = lib.mkEnableOption "modules";
  };

  config = {

    cliPrograms = lib.mkIf config.cliPrograms.enable {
      fastfetch = lib.mkDefault true;
      fish = lib.mkDefault true;
      git = lib.mkDefault true;
      nixvim = lib.mkDefault true;
      starship = lib.mkDefault true;
    };

    hyprland = lib.mkIf config.hyprland.enable {
      default.enable = lib.mkDefault true;
      dependencies.mako.enable = true;
      settings = lib.mkDefault true;
    };

    modules = lib.mkIf config.modules.enable {
      programs = lib.mkDefault true;
      stylix = lib.mkDefault true;
    };

  };
}
