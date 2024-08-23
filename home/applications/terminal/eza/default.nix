{pkgs, ...}: {
  home.packages = with pkgs; [
    eza
  ];
  programs.eza.extraOptions = [];
}
