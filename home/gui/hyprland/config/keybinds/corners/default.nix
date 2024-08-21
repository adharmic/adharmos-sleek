{
  ...
}
:
{
  wayland.windowManager.hyprland.settings.bind =
  [
    "$mod, Q, setfloating, "
    "$mod, Q, resizeactive, exact 50% 50%"
    "$mod, Q, moveactive, exact 10 10"

    "$mod, P, setfloating, "
    "$mod, P, resizeactive, exact 50% 50%"
    "$mod, P, moveactive, exact 50% 10"
    "$mod, P, moveactive, -10 0"

    "$mod, Z, setfloating, "
    "$mod, Z, resizeactive, exact 50% 50%"
    "$mod, Z, moveactive, exact 10 50%"
    "$mod, Z, moveactive, 0 -10"

    "$mod, M, setfloating, "
    "$mod, M, resizeactive, exact 50% 50%"
    "$mod, M, moveactive, exact 50% 50%"
    "$mod, M, moveactive, -10 -10"
  ];
}
