{pkgs, ...}
: {
  imports = [
    ./prompt.nix
    ./alacritty.nix
  ];
  home.packages = with pkgs; [
    # Emulators
    wezterm

    # Utilities
    tmux
  ];
}
