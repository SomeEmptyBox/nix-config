{ config, lib, ... }:

{
  imports = [
  	./cliPrograms/default.nix
    ./guiPrograms/default.nix
    ./hyprland/default.nix
    ./modules/default.nix
  ];

  cliPrograms.enable = lib.mkDefault true;
  guiPrograms.enable = lib.mkDefault true;
  hyprland.enable = lib.mkDefault true;
  modules.enable = lib.mkDefault true;
}
