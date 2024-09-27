{ config, pkgs, ... }:

{
  wayland.windowManager.hyprland = {
    
    plugins = [pkgs.hyprlandPlugins.hyprtrails];

    settings.plugin.hyprtrails.color = "$red";

  };
}
