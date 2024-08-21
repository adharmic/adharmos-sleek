{
  ...
}
:
{
  wayland.windowManager.hyprland.settings.general =
  {
    gaps_in = 2;
    gaps_out = 10;
    border_size = 2;
    layout = "dwindle";
    resize_on_border = true;
  };
  wayland.windowManager.hyprland.settings.gestures.workspace_swipe = "on";
  wayland.windowManager.hyprland.settings.input.touchpad.natural_scroll = true;
  wayland.windowManager.hyprland.settings.misc = 
  {
    initial_workspace_tracking = 0;
    disable_hyprland_logo = true;
    disable_splash_rendering = true;
  };
  imports =
  [
    #./animation
    ./keybinds
    #./decoration
    #./env 
    #./general 
    #./gestures
    #./input
    #./misc
    #./monitor
    #./screens
    ./startup.nix
    #./theme
    #./windowrules
    #./workspaces
  ];
}
