{
  config,
  lib,
  pkgs,
  ...
}:

{
  options.hyprland.dependencies.mako.enable = lib.mkEnableOption "mako";
  config = lib.mkIf config.hyprland.dependencies.mako.enable {

    services.mako = {
      enable = true;
      anchor = "top-center";
      borderRadius = 5;
      borderSize = 4;
      height = 200;
      width = 400;
      defaultTimeout = 5000;
    };

  };
}
