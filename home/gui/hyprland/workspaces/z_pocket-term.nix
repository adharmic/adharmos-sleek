{config, ...}: {
  wayland.windowManager.hyprland.settings.workspace = [
    "special:pocket-term, on-created-empty:[float; center; size 50% 33%; stayfocused] ${config.globalConfig.termEmulator}, layoutopt:orientation:center"
  ];
}
