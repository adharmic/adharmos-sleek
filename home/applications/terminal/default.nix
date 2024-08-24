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
    ./zk # For notetaking
  ];
  home.packages = with pkgs; [
    # Utilities
    delta
  ];
}
