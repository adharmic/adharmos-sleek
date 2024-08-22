{
  pkgs,
  vars,
  config,
  ...
}:
# let
#   currDir = "projects/adharmOS/modules/opsys/applications/home/waybar/";
# in 
{
  # Configure & Theme Waybar
  home.file.".config/waybar/colors.css".source = config.lib.file.mkOutOfStoreSymlink "${vars.dirs.assets.cols-abs}/wallust/generated/waybar-colors.css";
  programs.waybar = {
    enable = true;
    package = pkgs.waybar;
    style = ./style.css;
  };
  imports =
  [
    ./modules.nix
  ];
}

