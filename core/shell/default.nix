{...}
: {
  programs.fish.enable = true;
  programs.fish.shellInit = ''
    source (/home/adi/.nix-profile/bin/starship init fish --print-full-init | psub)
  '';
}
