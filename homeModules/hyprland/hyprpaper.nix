{ config, lib, pkgs, ... }:

{
  options.hyprland.hyprpaper = lib.mkEnableOption "hyprpaper";
  config = lib.mkIf config.hyprland.hyprpaper {

    services.hyprpaper = {
      enable = true;
      settings = {
      "$w" = "~/nix-config/wallpapers";

      preload = [
      	"$w/nixos-catppuccin-latte.png"
      	"$w/nixos-catppuccin-mocha.png"
      	"$w/quasar-catppuccin-mocha.png"
      ];

      wallpaper = [",$w/nixos-catppuccin-mocha.png"];

      };
    };

  };
}
