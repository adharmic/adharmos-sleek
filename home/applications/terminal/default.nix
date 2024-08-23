{pkgs, ...}
: {
  imports = [
    ./prompt
    ./alacritty.nix
    ./tmux
    ./lazygit
    ./eza
    ./zoxide
  ];
  home.packages = with pkgs; [
    # Utilities
    delta
  ];
}
