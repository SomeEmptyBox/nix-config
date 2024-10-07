{ config, lib, pkgs, ... }:

{
  imports = [
    ./bookmarks.nix
    ./extensions.nix
    ./profile.nix
    ./searchEngines.nix
    ./settings.nix
    ./userChrome.nix
  ];

  options.guiPrograms.librewolf = lib.mkEnableOption "firefox";
  config = lib.mkIf config.guiPrograms.librewolf {

    programs.firefox = {
      enable = true;
      #package = pkgs.librewolf;
      #configPath = ".librewolf";
    };

  };
}
