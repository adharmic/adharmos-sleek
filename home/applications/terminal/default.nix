{pkgs, ...}
: {
  imports = [
    ./prompt
    ./alacritty.nix
    ./tmux
    ./lazygit
    ./eza
  ];
  home.packages = with pkgs; [
    # Utilities
    delta
  ];
}
