{ config, lib, pkgs, ... }:

{
  options.cliPrograms.fastfetch = lib.mkEnableOption "enables fastfetch";
  config = lib.mkIf config.cliPrograms.fastfetch {

    programs.fastfetch = {
      enable = true;
      settings = {

        display = {
          key.width = 4;
          separator = "";
          size.binaryPrefix = "si";
        };

        logo = {
          #preserveAspectRatio = true;
          source = "~/nix-config/wallpapers/nixos-logo.png";
          type = "kitty";
          #height = 20;
          width = 20;
        };

        modules = [
          "break" "break"
          { key = " "; type = "os"; keyColor = "blue"; format = "{3}"; }
          { key = "󰌽 "; type = "kernel"; keyColor = "yellow"; }
          { key = "󰅐 "; type = "uptime"; keyColor = "green"; }
          { key = " "; type = "memory"; }
          { key = " "; type = "packages"; keyColor = "red"; }
          { key = " "; type = "wm"; keyColor = "cyan"; }
          { key = " "; type = "colors"; keyColor = "magenta"; symbol = "circle"; }
        ];

      };
    };

  };
}
