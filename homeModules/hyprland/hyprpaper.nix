{ config, lib, pkgs, user, ... }:

{
  options.hyprland.hyprpaper = lib.mkEnableOption "hyprpaper";
  config = lib.mkIf config.hyprland.hyprpaper {

    services.hyprpaper = {
      enable = true;
      settings = {
      "$wp" = "${user.assets}";

      preload = [
      	"$wp/nixos-catppuccin-latte.png"
      	"$wp/nixos-catppuccin-mocha.png"
      	"$wp/quasar-catppuccin-mocha.png"
      ];

      wallpaper = [",$wp/quasar-catppuccin-mocha.png"];

      };
    };

  };
}
