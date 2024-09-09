{
  lib,
  hostname,
  ...
}: {
  options = {
    globalConfig = lib.mkOption {
      type = lib.types.submodule {
        options = {
          colorschemePath = lib.mkOption {
            type = lib.types.path;
            default = "~/.config/colorschemes/cshell";
            description = "Path to the directory of the required system colorscheme";
          };
          # TODO: Merge all terminal options into one object option
          termEmulator = lib.mkOption {
            type = lib.types.str;
            default = "kitty";
            description = "Preferred terminal emulator (for shortcuts)";
          };
          editor = lib.mkOption {
            type = lib.types.str;
            default = "~/.nix-profile/bin/hx";
            description = "Preferred terminal emulator bin path";
          };
          wallsPath = lib.mkOption {
            type = lib.types.path;
            default = "~/pictures/wallpapers";
            description = "Path to the wallpaper directory";
          };
          shell = lib.mkOption {
            type = lib.types.str;
            default = "~/.nix-profile/bin/fish";
            description = "Path to your prepferred shell";
          };
          username = lib.mkOption {
            type = lib.types.str;
            default = "adi";
            description = "Username used for metadata";
          };
          hostname = lib.mkOption {
            type = lib.types.str;
            default = "${hostname}";
            description = "Host name of the system";
          };
        };
      };
    };
  };

  config = {
    globalConfig.colorschemePath = /home/adi/.config/colorschemes/cshell;
    globalConfig.termEmulator = "kitty";
    globalConfig.wallsPath = /home/adi/pictures/wallpapers;
    globalConfig.shell = "fish";
    globalConfig.editor = "hx";
    globalConfig.hostname = "${hostname}";
  };
}
