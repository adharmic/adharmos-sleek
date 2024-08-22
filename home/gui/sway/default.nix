{...}
: {
  wayland.windowManager.sway = {
    enable = true;
    config = 
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
      terminal = "alacritty";
      startup = [
        {command = "alacritty";}
      ];
    };
  };
}
