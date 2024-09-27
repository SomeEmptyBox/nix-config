{ config, lib, ... }:

{
  imports = [
    ./packages.nix
    ./programs.nix
    ./theme.nix
  ];

  options.modules.enable = lib.mkEnableOption "modules";
  config = lib.mkIf config.modules.enable {

    modules = {
      packages = lib.mkDefault true;
      programs = lib.mkDefault true;
      theme = lib.mkDefault true;
    };

  };
}
