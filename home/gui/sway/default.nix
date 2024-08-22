{...}
: {
  wayland.windowManager.sway = {
    enable = true;
    config = rec
    {
      output = {
        eDP-1 = {
          scale = "1.5";
        };
      };
      gaps = {
        outer = 2;
        inner = 5;
      };
      terminal = "wezterm";
      startup = [
        {command = "wezterm";}
      ];
    };
  };
}
