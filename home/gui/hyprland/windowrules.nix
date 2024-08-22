{
  pkgs,
  ...
}
:
{
  wayland.windowManager.hyprland.settings.windowrulev2 =
  [
      "noblur, title:^(.*(Twitch|YouTube|Plex|Udemy|Figma)).*(Firefox).*$"
      "opacity 1 override, title:^(.*(Twitch|YouTube|Plex|Udemy|Figma)).*(Firefox).*$"
      "opacity 0.95 override, title:^(?!.*(Twitch|YouTube|Plex|Udemy|Figma)).*Firefox.*$"
  ];
  wayland.windowManager.hyprland.settings.windowrule =
  [
      "float, title:^(Volume Control)$"
  ];
}
