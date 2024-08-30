{pkgs, ...}
: {
  imports = [
    ./rust
  ];
  home.packages = with pkgs; [
    nodejs_20
    corepack
  ];
}
