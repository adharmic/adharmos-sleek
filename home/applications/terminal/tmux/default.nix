{pkgs, ...}: {
  home.packages = with pkgs; [
    tmux
    tmuxinator
  ];
  home.file.".config/tmux/tmux.conf".source = ./tmux.conf;
}
