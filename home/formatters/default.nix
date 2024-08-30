{pkgs, ...}
: {
  home.packages = with pkgs; [
    alejandra
    nodePackages.prettier
  ];
}
