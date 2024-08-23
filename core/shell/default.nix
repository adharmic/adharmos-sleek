{...}
: {
  programs.fish.enable = true;
  # TODO: Extract bat theme into separate bat config.
  programs.fish.shellInit = ''
    set -Ux BAT_THEME 'ansi'
    fzf --fish | source
    source (/home/adi/.nix-profile/bin/starship init fish --print-full-init | psub)
  '';
  programs.fish.shellAbbrs = {
    # TODO: Replace with global variable to config path
    hrb = "home-manager switch --flake ~/projects/adharmos#adi@adharmos";
    nrb = "sudo nixos-rebuild switch --flake ~/projects/adharmos#adharmos";
    lg = "lazygit";
  };
}
