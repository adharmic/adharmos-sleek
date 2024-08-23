{config, ...}
: {
  programs.fish.enable = true;
  programs.fish.shellInit = ''
    fzf --fish | source
    source (/home/adi/.nix-profile/bin/starship init fish --print-full-init | psub)
  '';
  programs.fish.shellAbbrs = {
    # TODO: Replace with global variable to config path
    hrb = "home-manager switch --flake ~/projects/adharmos#adi@adharmos";
    nrb = "sudo nixos-rebuild switch --flake ~/projects/adharmos#adharmos";
  };
}
