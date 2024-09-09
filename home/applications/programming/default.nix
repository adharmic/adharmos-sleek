{pkgs, ...}
: {
  imports = [
    ./rust
  ];
  home.packages = with pkgs; [
    nodejs
    corepack
  ];
}
