{...}: {
  wayland.windowManager.hyprland.settings.workspace = [
    "1, name:coding, on-created-empty: hyprctl dispatch exec -- alacritty -e tmuxinator s osconf"
  ];
}
