{
  ...
}
:
{
  home.file."~/.config/sway/config".source = ./config;
  wayland.windowManager.sway = 
  {
    enable = true;
   # config = rec
   # {
   #   output = 
   #   {
   #     eDP-1 =
   #     {
   #       scale = "1.3";
   #     };
   #   };
   #   gaps = 
   #   {
   #	outer = 10;
   #     inner = 5;
   #   };
   #   terminal = "wezterm";
   #   startup = 
   #   [
   #     { command = "wezterm"; }
   #   ];
   # };
  };  
}
