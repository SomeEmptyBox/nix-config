{ config, lib, pkgs, inputs, user, ... }:

{
  imports = [ inputs.stylix.homeManagerModules.stylix ];

  options.modules.stylix = lib.mkEnableOption "stylix";
  config = lib.mkIf config.modules.stylix {

    stylix = {
      enable = true;
      autoEnable = true;
      image = ../../assets/hatsune-miku-blue.jpg;
      polarity = "dark";
      base16Scheme = "${pkgs.base16-schemes}/share/themes/catppuccin-mocha.yaml";
      override = {
        "base00" = "11111b";
        "base01" = "181825";
        "base02" = "1e1e2e";
        "base03" = "313244";
        "base04" = "b6d1fc";
        "base05" = "cee0fd";
        "base06" = "e7f0fe";
        "base07" = "ffffff"; # text
        "base08" = "89b4fa"; # options # blue
        "base09" = "b4befe"; # boolean # greyish
        "base0A" = "ffffcc"; # traces ? idk # yellow
        "base0B" = "94e2d5";#"99ffd6"; # string # teal green
        "base0C" = "94e2d5";#"81a1c1"; # teal
        "base0D" = "6699ff"; # border # blue
        "base0E" = "ffb3d9"; # errors # pink
        "base0F" = "f2cdcd"; # characters
      };
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
