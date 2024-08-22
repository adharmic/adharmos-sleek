{
  pkgs,
  config,
  ...
}:
# let
#   currDir = "projects/adharmOS/modules/opsys/applications/home/waybar/";
# in
{
  # Configure & Theme Waybar
  programs.waybar = {
    enable = true;
    package = pkgs.waybar;
    style = ./style.css;
  };
  imports = [
    ./modules.nix
  ];
}
