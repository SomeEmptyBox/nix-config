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
    };

    stylix.cursor = {
      name = "Bibata-Modern-Classic";
      size = 20;
      package = pkgs.bibata-cursors;
    };

    stylix.opacity = {
      applications = 1.0;
      desktop = 1.0;
      popups = 1.0;
      terminal = 1.0;
    };

    stylix.fonts = {
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

    stylix.targets = {
      kitty.variant256Colors = true;
    };

  };
}
