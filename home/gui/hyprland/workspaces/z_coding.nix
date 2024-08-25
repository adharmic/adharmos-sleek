{...}: {
  wayland.windowManager.hyprland.settings.workspace = [
    "1, persistent:true, name:coding, on-created-empty:hyprctl dispatch exec -- alacritty -e tmux attach"
    "1, fullscreen:1"
  ];
}
