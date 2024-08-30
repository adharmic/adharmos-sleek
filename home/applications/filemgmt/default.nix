{pkgs, ...}
: {
  home.packages = with pkgs; [
    ranger # Terminal file explorer
  ];
}
