{pkgs, ...}
: {
  home.packages = with pkgs; [
    nnn # Terminal file explorer
  ];
}
