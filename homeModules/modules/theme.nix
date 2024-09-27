{ config, lib, pkgs, inputs, ... }:

{
  imports = [inputs.catppuccin.homeManagerModules.catppuccin];

  options.modules.theme = lib.mkEnableOption "catppuccin";
  config = lib.mkIf config.modules.theme {

    catppuccin = {
      enable = true;
      accent = "blue";
      flavor = "mocha";
      pointerCursor.enable = false;
    };

    qt = {
      enable = true;
      style.name = "kvantum";
      platformTheme.name = "kvantum";
    };

    gtk = {
      enable = true;
      catppuccin = {
      	enable = true;
      	gnomeShellTheme = true;
      };
      iconTheme = {
        name = "Adwaita";
        package = pkgs.adwaita-icon-theme;
      };
    };

    home.pointerCursor = {
      gtk.enable = true;
      name = "Bibata-Modern-Classic";
      size = 20;
      package = pkgs.bibata-cursors;
    };

  };
}
