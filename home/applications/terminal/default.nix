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
  programs.lazygit.settings = {
    git.paging = {
      colorArg = "always";
      pager = "delta --dark --paging=never";
    };
  };
}
