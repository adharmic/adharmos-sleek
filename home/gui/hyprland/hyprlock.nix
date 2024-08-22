{
  ...
}
:
{
  programs.hyprlock.settings = 
  {
    general = 
    {
      grace = 0;
      hide_cursor = true;
      no_fade_in = false;
    };

    background = 
    [
      {
        path = "~/Pictures/wallpapers/crag.png";
        blur_passes = 3;
        blur_size = 8;
      }
    ];

    input-field = 
    [
      {
      	size = "200, 50";
      	position = "0, 0";
      	monitor = "";
      	dots_center = true;
      	fade_on_empty = false;
      	font_color = "rgb(202, 211, 245)";
      	inner_color = "rgb(91, 96, 120)";
      	outer_color = "rgb(24, 25, 38)";
      	outline_thickness = 5;
      	placeholder_text = "Device Locked";
        shadow_passes = 2;
      }
    ];
  };
}
