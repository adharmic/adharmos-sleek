{pkgs, ...}
: {
  imports = [
    ./hyprland
    # ./sway
    ./wayland
    ./waybar
  ];
}
