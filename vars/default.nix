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
        };
      };
    };
  };

  config = {
    globalConfig.colorschemePath = "~/.config/colorschemes/cshell";
  };
}
