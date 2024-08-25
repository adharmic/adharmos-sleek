{pkgs, ...}: {
  home.packages = with pkgs; [
    tmux
    tmuxifier
  ];
  home.file.".config/tmux/tmux.conf".source = ./tmux.conf;
}
