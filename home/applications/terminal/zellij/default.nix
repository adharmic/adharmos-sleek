{pkgs, ...}
: {
  home.file.".config/zellij/config.kdl".source = ./config.kdl;
  home.file.".config/zellij/layouts" = {
    source = ./layouts;
    recursive = true;
  };
  home.file.".bins/zjstatus".source = "${pkgs.zjstatus}/bin/zjstatus.wasm";
  home.packages = with pkgs; [
    zellij
  ];
}
