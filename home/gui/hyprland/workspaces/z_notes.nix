{...}: {
  wayland.windowManager.hyprland.settings.workspace = [
    "special:notes, on-created-empty: hyprctl dispatch exec -- alacritty -e tmuxinator s satya"
  ];
}
