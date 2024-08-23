{pkgs, ...}
: {
  imports = [
    ./prompt.nix
    ./alacritty.nix
    ./tmux
  ];
  home.packages = with pkgs; [
    # Emulators
    wezterm

    # Utilities
  ];
}
