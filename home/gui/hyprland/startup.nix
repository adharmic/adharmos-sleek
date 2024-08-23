{config, ...}
: {
  wayland.windowManager.hyprland.settings."exec-once" = [
    "swww-daemon"
    "swww img ${config.globalConfig.wallsPath}/$(ls ${config.globalConfig.wallsPath} | shuf | head -1) --transition-type center"
    "waybar"
  ];
}
