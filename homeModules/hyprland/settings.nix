{ config, lib, ... }:

{
  options.hyprland.settings = lib.mkEnableOption "settings";
  config = lib.mkIf config.hyprland.settings {
  
  wayland.windowManager.hyprland.enable = true;
  wayland.windowManager.hyprland.settings = {

    "$browser" = "firefox";
    "$file" = "yazi";
    "$menu" = "ags -t applauncher";
    "$monitor" = "btop";
    "$terminal" = "kitty";

    monitor = ", 1920x1080, 0x0, 1.0";

    exec-once = [
      "ags"
      "clipse -listen"
    ];

    env = [     
      "GDK_BACKEND,wayland"
      "SDL_VIDEODRIVER,wayland"
      "CLUTTER_BACKEND,wayland"

      "QT_QPA_PLATFORM,wayland"
      #"QT_QPA_PLATFORMTHEME,qt6ct"
      #"QT_WAYLAND_DISABLE_WINDOWDECORATION,1"

      "XDG_CURRENT_DESKTOP,Hyprland"
      "XDG_SESSION_TYPE,wayland"
      "XDG_SESSION_DESKTOP,Hyprland"
    ];

    general = {
      border_size = 4;
      gaps_in = 3;
      gaps_out = 8;
      layout = "dwindle";
      #"col.active_border" = lib.mkForce "$red $green $blue $yellow";
      #"col.inactive_border" = lib.mkForce "$crust";
      resize_on_border = true;
    };

    master = {
      mfact = 0.5;
      new_status = "master";
    };

    decoration = {
      rounding = 10;
      drop_shadow = false;
      blur = {
        enabled = false;
        size = 4;
        passes = 2;
      };
    };

    input.touchpad = {
      natural_scroll = true;
      drag_lock = true;
      tap-and-drag = true;
    };

    gestures = {
      workspace_swipe = true;
    };

    misc = {
      disable_hyprland_logo = true;
      disable_splash_rendering = true;
      font_family = "JetBrainsMonoNerdFont";
      vrr = 1;
    };
  };

  };
}
