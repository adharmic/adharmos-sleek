{config, ...}: {
  wayland.windowManager.hyprland.settings.workspace = [
    "1, name:coding, on-created-empty: [fullscreen] ${config.globalConfig.termEmulator}"
  ];
}
