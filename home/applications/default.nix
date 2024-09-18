{pkgs, ...}
: {
  imports = [
    ./programming
    ./helix
    ./terminal
    ./firefox
    ./filemgmt
    ./wine
  ];

  # UNORGANIZED PACKAGES!
  # Use this if you're just wanting to quickly install packages for your user.
  # TODO: Modularize
  home.packages = with pkgs; [
    rofi-wayland-unwrapped
    vesktop
    swww
    dioxus-cli
    sqlite
    diesel-cli

    # Hardware controllers
    pulsemixer
    wireplumber
    brightnessctl
    playerctl

    # obsidian
    fzf
    bat
    spotify
    neomutt
    freecad
    glow
    hugo
    wev
    thunderbird
    qbittorrent
    openvpn
    dunst

    # shell
    direnv
    blender
    unzip
    python3
    neofetch
  ];
}
