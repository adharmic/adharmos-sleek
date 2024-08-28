{pkgs, ...}: {
  home.packages = with pkgs; [
    tmux
    tmuxinator
  ];
  home.file.".config/tmux/tmux.conf".source = ./tmux.conf;
  home.file.".tmux-layouts/" = {
    source = ./layouts;
    recursive = true;
  };
}
