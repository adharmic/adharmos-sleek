{config, ...}
: {
  programs.alacritty = {
    enable = true;
    settings = {
      import = ["${config.globalConfig.colorschemePath}/alacritty.toml"];
      window.dynamic_padding = true;
      font.normal = {
        family = "CaskaydiaCove Nerd Font";
        style = "Mono";
      };
      font.size = 16;
    };
  };
}
