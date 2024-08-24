{...}
: {
  home.file.".config/colorschemes/cshell" = {
    source = ./colorconf;
    recursive = true;
  };
  home.file.".config/helix/themes/systheme.toml".source = ./colorconf/helix/systheme.toml;
}
