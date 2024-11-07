{ user, ... }:

{
  services.hyprpaper = {

    enable = true;

    settings = {
      preload = [ "${user.assets}/nixos-catppuccin-mocha.png" ];
      wallpaper = [ ",${user.assets}/nixos-catppuccin-mocha.png" ];
    };

  };
}
