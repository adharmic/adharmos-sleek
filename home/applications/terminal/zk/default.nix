{pkgs, ...}: {
  home.packages = with pkgs; [
    zk
  ];
  home.file.".config/zk/config.toml" = {
    source = ./config.toml;
  };
}
