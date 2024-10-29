{
  config,
  lib,
  pkgs,
  ...
}:

{
  options.cliPrograms.fish = lib.mkEnableOption "fish";
  config = lib.mkIf config.cliPrograms.fish {

    programs.fish.enable = true;

  };
}
