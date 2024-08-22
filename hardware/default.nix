{...}
: {
  # We need to allow unfree packages to enable firmware.
  nixpkgs = {
    config = {
      allowUnfree = true;
    };
  };
  imports = [
    ./keyboard.nix
  ];
  hardware.enableAllFirmware = true;
}
