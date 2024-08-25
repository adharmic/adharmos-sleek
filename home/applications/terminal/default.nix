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
    ./fd # Better find
  ];
  home.packages = with pkgs; [
    # Utilities
    delta
  ];
}
