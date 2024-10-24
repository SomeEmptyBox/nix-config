{ config, lib, pkgs, inputs, user, ... }:

{
  imports = [
    inputs.stylix.homeManagerModules.stylix
    inputs.catppuccin.homeManagerModules.catppuccin
  ];

  options.modules.stylix = lib.mkEnableOption "stylix";
  config = lib.mkIf config.modules.stylix {

    catppuccin = {
      enable = true;
      accent = "blue";
      flavor = "mocha";
      pointerCursor.enable = false;
    };

    stylix = {
      enable = true;
      autoEnable = false;
      image = ../../assets/nixos-catppuccin-mocha.png;
      polarity = "dark";
      base16Scheme = "${pkgs.base16-schemes}/share/themes/catppuccin-mocha.yaml";
      override = {
        base00 = "11111b";
        base01 = "181825";
        base04 = "b6d1fc";
      };

      cursor = {
        name = "Bibata-Modern-Classic";
        size = 20;
        package = pkgs.bibata-cursors;
      };

      opacity = {
        applications = 1.0;
        desktop = 1.0;
        popups = 1.0;
        terminal = 1.0;
      };

      fonts = {
        monospace = {
          name = "JetBrainsMonoNF-SemiBold";
          package = pkgs.nerdfonts.override {fonts = ["JetBrainsMono"];};
        };

        sizes = {
          applications = 10;
          desktop = 10;
          popups = 10;
          terminal = 12;
        };
      };

      targets = {
#        kitty.variant256Colors = true;
      };
    };

 #   qt = {
 #     enable = true;
 #     style.name = "kvantum";
 #     platformTheme.name = "kvantum";
 #   };

    gtk = {
      enable = true;
      catppuccin = {
        enable = true;
        gnomeShellTheme = true;
        tweaks = [ "normal" ];
      };
      iconTheme = {
        name = "Adwaita";
        package = pkgs.adwaita-icon-theme;
      };
    };

  };
}
