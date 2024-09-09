{pkgs, ...}: {
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
