{config, ...}
: {
  # MAIN MODIFIER KEY
  wayland.windowManager.hyprland.settings."$mod" = "SUPER";

  # TODO: Read through dispatchers!!
  # https://wiki.hyprland.org/Configuring/Dispatchers/

  # TODO: Modularize bindings

  # TODO: Add PiP bindings to Q, P, Z, M
  # Steps:
  # - Make window float
  # - Resize
  # - Pin
  # - Move to specified corner

  # BINDINGS
  wayland.windowManager.hyprland.settings.bind = [
    # Pulsemixer
    "$mod SHIFT, U, exec, [float] alacritty -e pulsemixer"
    # Picture-in-Picture
    "$mod, Q, setfloating, "
    "$mod, Q, resizeactive, exact 45% 40%"
    "$mod, Q, moveactive, exact 10 10"

    "$mod, P, setfloating, "
    "$mod, P, resizeactive, exact 45% 40%"
    "$mod, P, moveactive, exact 55% 10"
    "$mod, P, moveactive, -10 0"

    "$mod, Z, setfloating, "
    "$mod, Z, resizeactive, exact 45% 40%"
    "$mod, Z, moveactive, exact 10 60%"
    "$mod, Z, moveactive, 0 -10"

    "$mod, M, setfloating, "
    "$mod, M, resizeactive, exact 45% 40%"
    "$mod, M, moveactive, exact 55% 60%"
    "$mod, M, moveactive, -10 -10"

    # TOGGLE WAYBAR
    "$mod SHIFT, X, exec, pkill -SIGUSR1 waybar"

    # TODO: Set up screenshot shortcut
    # APPLICATION SHORTCUTS
    "$mod, F, exec, firefox"
    "$mod, RETURN, exec, ${config.globalConfig.termEmulator}"
    "$mod, R, exec, rofi -show drun"
    "$mod, U, exec, obsidian"
    "$mod, E, exec, ${config.globalConfig.termEmulator} -e ranger"
    "CONTROL SHIFT, 4, exec, grim -g \"$(slurp)\" - | wl-copy"
    "$mod, T, exec, ${config.globalConfig.termEmulator} -e hx"
    "$mod, Escape, exec, ${config.globalConfig.termEmulator} -e btop"

    # SPECIAL WORKSPACES
    "$mod, BRACKETLEFT, togglespecialworkspace, pocket-term"
    "$mod SHIFT, BRACKETLEFT, movetoworkspace, special:pocket-term"
    # "$mod CONTROL, BRACKETLEFT, workspace, special:pocket-term"
    "$mod, BRACKETRIGHT, togglespecialworkspace, notes"
    "$mod SHIFT, BRACKETRIGHT, movetoworkspace, special:notes"
    "$mod, SLASH, togglespecialworkspace, dashboard"

    # WINDOW MANAGEMENT
    "$mod, X, killactive"
    "$mod, H, movefocus, l"
    "$mod, L, movefocus, r"
    "$mod, K, movefocus, u"
    "$mod, J, movefocus, d"
    "$mod, V, togglefloating,"
    "$mod, Y, centerwindow,"
    "$mod SHIFT, V, pin,"
    "$mod SHIFT, H, swapwindow, l"
    "$mod SHIFT, J, swapwindow, d"
    "$mod SHIFT, K, swapwindow, u"
    "$mod SHIFT, L, swapwindow, r"

    "$mod CONTROL, L, resizeactive, 10% 0"
    "$mod CONTROL, H, resizeactive, -10% 0"
    "$mod CONTROL, K, resizeactive, 0 -10%"
    "$mod CONTROL, J, resizeactive, 0 10%"
    "$mod CONTROL, L, centerwindow, "
    "$mod CONTROL, H, centerwindow, "
    "$mod CONTROL, K, centerwindow, "
    "$mod CONTROL, J, centerwindow, "
    "$mod, W, fullscreen, 1"
    "$mod SHIFT, W, fullscreen, 0"

    # SPLIT MANAGEMENT
    "$mod, I, splitratio, +0.1"
    "$mod, O, splitratio, -0.1"

    # RESIZE WINDOWS

    # WORKSPACE MANAGEMENT
    # - Focus workspace
    "$mod, 1, workspace, 1"
    "$mod, 2, workspace, 2"
    "$mod, 3, workspace, 3"
    "$mod, 4, workspace, 4"
    "$mod, 5, workspace, 5"
    "$mod, 6, workspace, 6"
    "$mod, 7, workspace, 7"
    "$mod, 8, workspace, 8"
    "$mod, 9, workspace, 9"

    # - Move active application to workspace
    # - And switch to that workspace
    "$mod SHIFT, 1, movetoworkspace, 1"
    "$mod SHIFT, 2, movetoworkspace, 2"
    "$mod SHIFT, 3, movetoworkspace, 3"
    "$mod SHIFT, 4, movetoworkspace, 4"
    "$mod SHIFT, 5, movetoworkspace, 5"
    "$mod SHIFT, 6, movetoworkspace, 6"
    "$mod SHIFT, 7, movetoworkspace, 7"
    "$mod SHIFT, 8, movetoworkspace, 8"
    "$mod SHIFT, 9, movetoworkspace, 9"

    # - Cycle through next and previous workspaces
    "$mod, D, workspace, +1"
    "$mod, A, workspace, -1"
    "$mod SHIFT, D, movetoworkspace, +1"
    "$mod SHIFT, A, movetoworkspace, -1"

    # - Cycle through next workspace with application
    "$mod, N, workspace, e+1"
    "$mod, C, workspace, e-1"

    # - Cycle through next and previous displays
    "$mod, S, focusmonitor, -1"
    "$mod, G, focusmonitor, +1"
    "$mod SHIFT, S, movewindow, mon:-1"
    "$mod SHIFT, G, movewindow, mon:+1"

    # BIOS/FN SHORTCUTS

    # - Audio controls/F1-3
    ", F1, exec, wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle"
    ", F2, exec, wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-"
    ", F3, exec, wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%+"

    # - Media controls/F4-6
    ", F4, exec, playerctl previous"
    ", F5, exec, playerctl play-pause"
    ", F6, exec, playerctl next"

    # - Screen brightness/F7-8
    ", F7, exec, brightnessctl s 5%-"
    ", F8, exec, brightnessctl s +5%"

    # - Extend Display/F9
    ", F9, exec, echo Display Mirroring not yet enabled"

    # - Kill/Airplane Mode/F10
    ", F10, exec, echo Airplane mode not yet enabled"

    # - Print/F11
    ", F11, exec, echo Screenshots not yet enabled"

    # - Framework/F12
    ", F12, exec, echo Framework button not yet enabled"

    # JUST FOR FUN
    "$mod SHIFT, B, exec, swww img ~/pictures/wallpapers/$(ls ~/pictures/wallpapers | shuf | head -1) --transition-type center"
  ];
}
