{
  pkgs,
  ...
}
:
{
  # Enable boot loader
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;

  # Import the hardware configuration.
  imports = 
  [
    ./hardware-configuration.nix
    ./users
    ./services
  ];

  # Enable flakes and the new CLI
  nix.settings.experimental-features =
  [
    "nix-command"
    "flakes"
  ];

  # Install the bare minimum packages required to get Nix up and running.
  environment.systemPackages = 
  with pkgs;
  [
    git
    vim
    wget
    curl
    home-manager
  ];

  # The hostname of the machine.
  networking.hostName = "adharmos";
  # For connecting to the Internet.
  networking.networkmanager.enable = true;

  # Set vim as the default editor.
  environment.variables.EDITOR = "vim";

  system.stateVersion = "24.05";
}
