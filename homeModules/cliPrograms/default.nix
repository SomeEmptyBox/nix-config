{ config, lib, pkgs, ... }:

{
  imports = [
    ./fastfetch.nix
    ./fish.nix
    ./nixvim.nix
    ./micro.nix
    ./starship.nix
  ];

  options.cliPrograms.enable = lib.mkEnableOption "cliPrograms";
  config = lib.mkIf config.cliPrograms.enable {

    cliPrograms = {
      fastfetch = lib.mkDefault true;
      fish = lib.mkDefault true;
      nixvim = lib.mkDefault false;
      micro = lib.mkDefault true;
      starship = lib.mkDefault true;
    };

  };
}
