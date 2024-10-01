{
  wayland.windowManager.hyprland.settings.windowrulev2 = [

    # Universal
    "suppressevent maximize, class:(.*)"
    "center, floating:(1)"

    "float, class:(xdg-desktop-portal-gtk)"
    "size 60% 70%, class:(xdg-desktop-portal-gtk)"

    "float, class:(.blueman-manager-wrapped)"
    "size 30% 70%, class:(.blueman-manager-wrapped)"

    "fullscreenstate 0 2, class:(librewolf)"

    "float, title:(Picture-in-Picture)"
    "size 40% 40%, title:(Picture-in-Picture)"
    "move 100%-w-10 100%-w-10, title:(Picture-in-Picture)"

    "float, class:(clipse)"
    "size 30% 70%, class:(clipse)"

    "float, class:(imv)"
    "size 80% 80%, class:(imv)"

  ];
}
