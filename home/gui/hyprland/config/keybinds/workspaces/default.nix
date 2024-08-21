{
  ...
}
:
{
  imports = 
  [
    ./special.nix
  ];
  wayland.windowManager.hyprland.settings.bind = 
  [
    # Switch focus to workspace
    "$mod, 1, workspace, 1"
    "$mod, 2, workspace, 2"
    "$mod, 3, workspace, 3"
    "$mod, 4, workspace, 4"
    "$mod, 5, workspace, 5"
    "$mod, 6, workspace, 6"
    "$mod, 7, workspace, 7"
    "$mod, 8, workspace, 8"
    "$mod, 9, workspace, 9"

    # Move active application to workspace and switch
    "$mod SHIFT, 1, movetoworkspace, 1"
    "$mod SHIFT, 2, movetoworkspace, 2"
    "$mod SHIFT, 3, movetoworkspace, 3"
    "$mod SHIFT, 4, movetoworkspace, 4"
    "$mod SHIFT, 5, movetoworkspace, 5"
    "$mod SHIFT, 6, movetoworkspace, 6"
    "$mod SHIFT, 7, movetoworkspace, 7"
    "$mod SHIFT, 8, movetoworkspace, 8"
    "$mod SHIFT, 9, movetoworkspace, 9"

    # Cycle through next and previous workspaces
    "$mod, D, workspace, +1"
    "$mod, A, workspace, -1"
    "$mod SHIFT, D, movetoworkspace, -1"
    "$mod SHIFT, A, movetoworkspace, +1"

    # Cycle through workspaces with active applications
    "$mod, N, workspace, e+1"
    "$mod, P, workspace, e-1"

    # Cycle through displays
    "$mod, S, focusmonitor, -1"
    "$mod, G, focusmonitor, +1"
    "$mod SHIFT, S, movewindow, mon:-1"
    "$mod SHIFT, G, movewindow, mon:+1"
  ];
}
