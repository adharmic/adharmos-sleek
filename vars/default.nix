{lib, ...}: {
  options = {
    globalConfig = lib.mkOption {
      type = lib.types.submodule {
        options = {
          colorschemePath = lib.mkOption {
            type = lib.types.str;
            default = "~/.config/colorschemes/cshell";
            description = "Path to the directory of the required system colorscheme";
          };
          termEmulator = lib.mkOption {
            type = lib.types.str;
            default = "alacritty";
            description = "Preferred terminal emulator (for shortcuts)";
          };
        };
      };
    };
  };

  config = {
    globalConfig.colorschemePath = "~/.config/colorschemes/cshell";
    globalConfig.termEmulator = "alacritty";
  };
}
