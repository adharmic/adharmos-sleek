{pkgs, ...}
: {
  home.packages = with pkgs; [
    broot # Terminal file explorer
  ];
}
