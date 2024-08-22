{
  pkgs,
  ...
}
:
{
  imports =
  [
    ./hyprland
    # ./sway
    ./wayland
    ./waybar
  ];
  fonts.packages =
  with pkgs;
  [
    nerdfonts
  ];
}
