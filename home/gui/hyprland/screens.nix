{pkgs, ...}
: {
  wayland.windowManager.hyprland.settings.workspace = [
    "10,monitor:DP-3,default:true"
    "11,monitor:DP-4,default:true"
    "1,monitor:eDP-1"
    "2,monitor:eDP-1,default:true"
  ];
}
