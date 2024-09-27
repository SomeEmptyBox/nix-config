{ config, lib, ... }:

{
  imports = [
    ./firefox/default.nix
    ./kitty.nix
  ];

  options.guiPrograms.enable = lib.mkEnableOption "guiPrograms";
  config = lib.mkIf config.guiPrograms.enable {

    guiPrograms = {
      firefox = lib.mkDefault true;
      kitty = lib.mkDefault true;
    };

  };
}
