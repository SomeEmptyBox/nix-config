{ config, lib, ... }:

{
  imports = [
  	./cliPrograms
    ./guiPrograms
    ./hyprland
    ./modules
  ];

  options = {
    guiPrograms.enable = lib.mkEnableOption "guiPrograms";
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

    guiPrograms = lib.mkIf config.guiPrograms.enable {
      firefox = {
        enable = lib.mkDefault true;
        policies.enable = lib.mkDefault true;
      };
      kitty = lib.mkDefault true;
    };

    hyprland = lib.mkIf config.hyprland.enable {
      ags.enable = lib.mkDefault true;
      default.enable = lib.mkDefault true;
      settings = lib.mkDefault true;
    };

    modules = lib.mkIf config.modules.enable {
      packages = lib.mkDefault true;
      programs = lib.mkDefault true;
      stylix = lib.mkDefault true;
    };

  };
}
