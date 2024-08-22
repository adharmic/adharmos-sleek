{
  description = "adharmOS - a modularly designed NixOS configuration.";

  # Inputs are the dependencies the flake requires to run properly.
  # All inputs are passed to outputs with the same name.
  inputs = {
    # Import the Nix packages repository.
    # Use the latest stable release branch.
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-24.05";

    # Import home-manager for configuring personal programs.
    home-manager.url = "github:nix-community/home-manager/release-24.05";
    # Follow the same nixpkgs repo to keep package versions consistent.
    home-manager.inputs.nixpkgs.follows = "nixpkgs";

    helix.url = "github:helix-editor/helix/master";
  };

  # Outputs are the returned values from this flake.
  outputs = {
    self,
    nixpkgs,
    home-manager,
    ...
  } @ inputs
  : let
    inherit (self) outputs;
  in {
    nixosConfigurations.adharmos =
      nixpkgs.lib.nixosSystem
      {
        system = "x86_64-linux";
        specialArgs = {
          # Pass the inputs to all submodules.
          inherit inputs;
        };
        modules = [
          # This file contains only the bare minimum settings required for NixOS to run.
          ./core

          # This file contains hardware-specific configuration.
          # - Not essential for OS operation.
          ./hardware

          # This module contains global variables for the Operating System.
          ./vars
        ];
      };
    homeConfigurations."adi@adharmos" =
      home-manager.lib.homeManagerConfiguration
      {
        pkgs = nixpkgs.legacyPackages.x86_64-linux;
        extraSpecialArgs = {
          inherit inputs outputs;
        };
        modules = [
          # The home directory is meant to contain all other user controlled settings.
          ./home

          # The misc directory holds any additional resources. Images, scripts, etc.
          ./misc

          # This module contains global variables for the Operating System.
          ./vars
        ];
      };
  };
}
