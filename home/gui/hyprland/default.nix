{
  config,
  pkgs,
  ...
}
: {
  wayland.windowManager.hyprland = {
    enable = true;
    package = pkgs.hyprland;
    xwayland.enable = true;
    systemd.enable = true;
    settings.source = "${config.globalConfig.colorschemePath}/hyprland.conf";
  };
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
