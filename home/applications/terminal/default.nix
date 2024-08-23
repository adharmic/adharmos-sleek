{pkgs, ...}
: {
  imports = [
    ./prompt.nix
    ./alacritty.nix
    ./tmux
  ];
  home.packages = with pkgs; [
    # Utilities
    delta
  ];
}
