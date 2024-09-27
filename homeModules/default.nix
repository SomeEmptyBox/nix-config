{ config, lib, ... }:

{
  imports = [
  	./cliPrograms/default.nix
    ./guiPrograms/default.nix
    ./hyprland/default.nix
    ./modules/default.nix
  ];

  options.defaults.enable = lib.mkEnableOption "cliPrograms";
  config = lib.mkIf config.defaults.enable {
    
    cliPrograms = {
      fastfetch = lib.mkDefault true;
      fish = lib.mkDefault true;
      nixvim = lib.mkDefault true;
      micro = lib.mkDefault false;
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
      theme = lib.mkDefault true;
    };

  };
}
