{...}
: {
  wayland.windowManager.hyprland.enable = true;
  imports = [
    ./binds.nix
    ./startup.nix
    ./decoration.nix
    ./misc.nix
    ./animations.nix
    ./general.nix
    ./gestures.nix
    ./input.nix
    ./hyprlock.nix
    ./hypridle.nix
    ./screens.nix
    ./windowrules.nix
    ./env.nix
    ./monitor.nix
    ./theme.nix
    ./workspaces.nix
  ];
}
