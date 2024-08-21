{
  pkgs,
  ...
}
:
{
  # Import the hardware configuration.
  imports = 
  [
    ./hardware-configuration.nix
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
    nmtui # For connecting to the Internet.
  ];

  # Set vim as the default editor.
  environment.variables.EDITOR = "vim";

  system.stateVersion = "24.05";
}
