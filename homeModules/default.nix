{ config, lib, ... }:

{
  imports = [
  	./cliPrograms
    ./guiPrograms
    ./hyprland
    ./modules
  ];

  options.defaults.enable = lib.mkEnableOption "cliPrograms";
  config = lib.mkIf config.defaults.enable {
    
    cliPrograms = {
      fastfetch = lib.mkDefault true;
      fish = lib.mkDefault true;
      git = lib.mkDefault true;
      nixvim = lib.mkDefault true;
      starship = lib.mkDefault true;
    };

    guiPrograms = {
      firefox = lib.mkDefault true;
      kitty = lib.mkDefault true;
    };

    hyprland = {
      dependencies = lib.mkDefault true;
      hyprpaper = lib.mkDefault true;
      settings = lib.mkDefault true;
    };

    modules = {
      packages = lib.mkDefault true;
      programs = lib.mkDefault true;
      themes = lib.mkDefault true;
    };

  };
}
