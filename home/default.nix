{
  pkgs,
  ...
}
:
{
  # The username and home base directory for our machine.
  home.username = "adithya";
  home.homeDirectory = "/home/adithya/";
  home.stateVersion = "24.05";

  # Enable the home manager service so we can build our home configurations.
  programs.home-manager.enable = true;

  # To symlink files from the home-manager directory:
  # home.file."./config/myprogram/myprogram.conf".source = ./myprogram/myprogram.conf

  # NIXPKGS
  # - We can configure and extend the nixpkgs input as we like.
  nixpkgs = 
  {
    # We can use overlays to extend nixpkgs with programs that aren't yet in the nix repository.
    # - See https://nixos.wiki/wiki/Overlays
    overlays = 
    [];

    # We reconfigure nixpkgs to allow unfree programs, like Discord.
    config = 
    {
      allowUnfree = true;
    };
  };

  # HOME PACKAGES
  # - Keep this slim and modular. 
  # - If there are lots of related packages,
  # - consider distributing this array across multiple modules.
  home.packages =
  with pkgs;
  [

  ];

  # IMPORTS
  imports =
  [
  ];
}
