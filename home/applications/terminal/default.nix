{pkgs, ...}
: {
  imports = [
    ./prompt
    ./alacritty.nix
    ./tmux
    ./lazygit
  ];
  home.packages = with pkgs; [
    # Utilities
    delta
  ];
}
