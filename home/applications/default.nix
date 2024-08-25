{pkgs, ...}
: {
  imports = [
    ./programming
    ./helix
    ./terminal
    ./firefox
    ./filemgmt
  ];

  # UNORGANIZED PACKAGES!
  # Use this if you're just wanting to quickly install packages for your user.
  # TODO: Modularize
  home.packages = with pkgs; [
    rofi-wayland-unwrapped
    vesktop
    swww

    # Hardware controllers
    pulsemixer
    wireplumber
    brightnessctl
    playerctl

    obsidian
    fzf
    bat
    spotify
    neomutt
    thunderbird
    freecad
  ];
}
