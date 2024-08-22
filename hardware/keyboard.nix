{pkgs, ...}
: {
  environment.systemPackages = with pkgs; [
    keyd
  ];
  services.keyd.enable = true;
  services.keyd.keyboards.default.ids = ["0001:0001"];
  services.keyd.keyboards.default.settings = {
    main = {
      capslock = "leftcontrol";
      leftalt = "layer(leftalt)";
      rightalt = "leftmeta";
      leftcontrol = "leftalt";
    };
    leftalt = {
      h = "left";
      j = "down";
      k = "up";
      l = "right";
    };
  };
}
