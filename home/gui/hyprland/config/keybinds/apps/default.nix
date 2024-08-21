{
  ...
}
:
{
  wayland.windowManager.hyprland.settings.bind =
  [
    "$mod, F, exec, firefox"
    "$mod, RETURN, exec, wezterm"
    "$mod, R, exec, rofi -show drun"
    "CONTROL SHIFT, 4, exec, grim -g \"$(slurp)\" - wl-copy"
    "$mod, T, exec, wezterm hx"
  ];
}
