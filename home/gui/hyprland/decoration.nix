{...}
: {
  wayland.windowManager.hyprland.settings.decoration = {
    rounding = 10;

    blur = {
      enabled = true;
      size = 16;
      passes = 2;
      noise = 0.2;
      vibrancy = 0.2;
      contrast = 1.0;
    };

    active_opacity = 0.90;
    inactive_opacity = 0.75;
    fullscreen_opacity = 0.85;

    drop_shadow = "yes";
    # dim_inactive = true;
  };
  wayland.windowManager.hyprland.settings.blurls = [
    "waybar"
  ];
}
