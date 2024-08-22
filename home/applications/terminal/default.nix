{
  pkgs,
  ...
}
:
{
  imports = [
    ./prompt.nix
  ];
  home.packages =
  with pkgs;
  [
    # Emulators
    wezterm

    # Utilities
    tmux
  ];
  programs.alacritty = 
  {
    enable = true;
    settings = {
      
    };
  };
}
