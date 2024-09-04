{
  lib,
  pkgs,
  ...
}
: {
  # Enable boot loader
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;

  # Set time zone
  time.timeZone = lib.mkDefault "America/Chicago";

  # Garbage Collection/Storage optimization
  nix.optimise = {
    automatic = true;
    dates = ["07:00"];
  };
  nix.gc = {
    automatic = true;
    dates = "weekly";
    options = "--delete-older-than 7d";
  };

  # Import the hardware configuration.
  imports = [
    ./hardware-configuration.nix
    ./users
    ./services
    ./shell
  ];

  # Enable flakes and the new CLI
  nix.settings.experimental-features = [
    "nix-command"
    "flakes"
  ];

  # Install the bare minimum packages required to get Nix up and running.
  environment.systemPackages = with pkgs; [
    git
    vim
    wget
    curl
    home-manager
  ];
  fonts.packages = with pkgs; [
    nerdfonts
    cascadia-code
  ];

  # Hyprland for display purposes
  programs.hyprland = {
    enable = true;
    xwayland.enable = true;
  };

  # The hostname of the machine.
  networking.hostName = "adharmos";
  # For connecting to the Internet.
  networking.networkmanager.enable = true;

  # Set helix as the default editor.
  environment.variables.EDITOR = "hx";

  system.stateVersion = "24.05";
}
