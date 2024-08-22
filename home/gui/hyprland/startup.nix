{
  vars,
  ...
}
:
{
  wayland.windowManager.hyprland.settings."exec-once" =
  [
    # "hypridle"
    "swww-daemon"
    # "systemctl --user restart wallpaper-rotation.service"
    "sh ${vars.dirs.nix}/modules/opsys/services/global/wallpaper/signal.sh"
    "dbus-update-activation-environment --systemd WAYLAND_DISPLAY XDG_CURRENT_DESKTOP"
    "waybar"
    "sh wallpaper-rotation.sh"
  ];
}
