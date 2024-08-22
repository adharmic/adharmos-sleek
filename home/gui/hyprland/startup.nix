{ config, ...}
: {
  wayland.windowManager.hyprland.settings."exec-once" = [
    "swww-daemon"
    "swww img ${config.globalConfig.wallsPath}/ship.png --transition-type center"
    "waybar"
  ];
}
