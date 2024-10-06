{ config, lib, pkgs, inputs, user, ... }:

{
  imports = [ inputs.stylix.homeManagerModules.stylix ];

  options.modules.stylix = lib.mkEnableOption "stylix";
  config = lib.mkIf config.modules.stylix {

    stylix = {
      enable = true;
      autoEnable = true;
      image = ../../assets/quasar-catppuccin-mocha.png;
      polarity = "dark";
      base16Scheme = "${pkgs.base16-schemes}/share/themes/catppuccin-mocha.yaml";
      override = {
        base00 = "181825";
        base01 = "1e1e2e";
        base04 = "b6d1fc";
        base08 = "cba6f7";
        base0E = "f38ba8";
      };

      #base16Scheme = {
      #  base00 = "11111b";
      #  base01 = "181825";
      #  base02 = "1e1e2e";
      #  base03 = "313244";
      #  base04 = "b6d1fc";
      #  base05 = "cee0fd";
      #  base06 = "e7f0fe";
      #  base07 = "ffffff"; # text
      #  base08 = "89b4fa"; # options
      #  base09 = "f2cdcd"; # boolean
      #  base0A = "ffffcc"; # traces ? idk
      #  base0B = "99ffbb"; # string
      #  base0C = "94e2d5";
      #  base0D = "89b4fa"; # border
      #  base0E = "ff99cc"; # errors
      #  base0F = "f2cdcd"; # characters
      #};

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
        kitty.variant256Colors = true;
      };
    };

    qt = {
      enable = true;
      style.name = "adwaita-dark";
      platformTheme.name = "adwaita";
    };

    gtk = {
      enable = true;
      iconTheme = {
        name = "Adwaita";
        package = pkgs.adwaita-icon-theme;
      };
    };

  };
}
