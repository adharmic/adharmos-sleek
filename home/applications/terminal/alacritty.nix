{config, ...}
: {
  programs.alacritty = {
    enable = true;
    settings = {
      import = ["${config.globalConfig.colorschemePath}/alacritty.toml"];
    };
  };
}
