{
  wayland.windowManager.hyprland.settings = {

    "$mod" = "SUPER";
    "$alt" = "ALT";

    bind = [
      "$mod, A, exec, $menu"
      "$mod, B, exec, $browser"
      "$mod, C, centerwindow"
      "$mod, E, exec, $terminal -e $file"
      "$mod, R, forcerendererreload"
      "$mod, M, exec, [float; size 50% 55%; move 100%-w-10 10] $terminal -e $monitor"
      "$mod, T, exec, $terminal"
      "$mod, V, exec, $terminal --class clipse -e fish -c 'clipse'"

      "$alt, T, setfloating"

      # master layout
      "$mod, TAB, layoutmsg, rollnext"
      "$mod, Q, layoutmsg, mfact -0.05"
      "$mod, W, layoutmsg, mfact +0.05"

      # exit
      "$mod, ESCAPE, killactive"
      "$mod SHIFT, ESCAPE, exit"

      # screen state
      "$mod, F, fullscreen, 1"
      "$mod SHIFT, F, fullscreen, 0"
      "$alt, F, fullscreenstate, 0 2"

      # Screenshot
      ", PRINT, exec, hyprshot -m window -o ~/Pictures/Screenshots"
      "$mod, PRINT, exec, hyprshot -m output -o ~/Pictures/Screenshots"
      "SHIFT, PRINT, exec, hyprshot -m region -o ~/Pictures/Screenshots" 

      # Move Focus with $mod + Arrow keys
      "$mod, left, movefocus, l"
      "$mod, right, movefocus, r"
      "$mod, up, movefocus, u"
      "$mod, down, movefocus, d"

      # Move Windows with $mod + Arrow keys
      "$mod SHIFT, left, movewindow, l"
      "$mod SHIFT, right, movewindow, r"
      "$mod SHIFT, up, movewindow, u"
      "$mod SHIFT, down, movewindow, d"

      # Switch workspace with $mod + [0-9]
      "$mod, 1, workspace, 1"
      "$mod, 2, workspace, 2"
      "$mod, 3, workspace, 3"
      "$mod, 4, workspace, 4"
      "$mod, 5, workspace, 5"
      "$mod, 6, workspace, 6"
      "$mod, 7, workspace, 7"
      "$mod, 8, workspace, 8"
      "$mod, 9, workspace, 9"
      "$mod, 0, workspace, 10"

      # Move active window to a workspace with mod + SHIFT + [0-9] 
      "$mod SHIFT, 1, movetoworkspace, 1"
      "$mod SHIFT, 2, movetoworkspace, 2"
      "$mod SHIFT, 3, movetoworkspace, 3"
      "$mod SHIFT, 4, movetoworkspace, 4"
      "$mod SHIFT, 5, movetoworkspace, 5"
      "$mod SHIFT, 6, movetoworkspace, 6"
      "$mod SHIFT, 7, movetoworkspace, 7"
      "$mod SHIFT, 8, movetoworkspace, 8"
      "$mod SHIFT, 9, movetoworkspace, 9"
      "$mod SHIFT, 0, movetoworkspace, 10"

      # Scratchpad
      "$mod, S, togglespecialworkspace, magic"
      "$mod SHIFT, S, movetoworkspace, special:magic"
    ];

    bindm = [
      # Move/resize windows with mainMod + LMB/RMB and dragging
      "$mod, mouse:272, movewindow"
      "$mod, mouse:273, resizewindow"
    ];

    bindl = [
      # Laptop multimedia Keys
      ", XF86AudioNext, exec, playerctl next"
      ", XF86AudioPause, exec, playerctl play-pause"
      ", XF86AudioPlay, exec, playerctl play-pause"
      ", XF86AudioPrev, exec, playerctl previous"
    ];

    bindel = [
      # Laptop volume and LCD brightness keys
      ", XF86AudioMute, exec, wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle"
      ", XF86AudioMicMute, exec, wpctl set-mute @DEFAULT_AUDIO_SOURCE@ toggle"
      ", XF86AudioRaiseVolume, exec, wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%+"
      ", XF86AudioLowerVolume, exec, wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-"
      ", XF86MonBrightnessUp, exec, brightnessctl set 5%+"
      ", XF86MonBrightnessDown, exec, brightnessctl set 5%-"
    ];

  };
}
