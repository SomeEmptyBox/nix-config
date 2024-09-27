{ config, lib, ... }:

{
  imports = [
    ./extensions.nix
    ./profile.nix
    ./policies.nix
    ./searchEngines.nix
    ./settings.nix
    ./userChrome.nix
  ];

  options.guiPrograms.firefox = lib.mkEnableOption "firefox";
  config = lib.mkIf config.guiPrograms.firefox {

    programs.firefox.enable = true;

  };
}
