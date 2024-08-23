{pkgs, ...}
: {
  imports = [
    ./prompt
    ./alacritty.nix
    ./tmux
    ./lazygit
    ./eza
    ./zoxide
    ./btop
  ];
  home.packages = with pkgs; [
    # Utilities
    delta
  ];
}
