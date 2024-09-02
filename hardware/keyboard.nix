{pkgs, ...}
: {
  environment.systemPackages = with pkgs; [
    keyd
  ];
  services.keyd.enable = true;
  services.keyd.keyboards.default.ids = ["0001:0001"];
  services.keyd.keyboards.default.settings = {
    main = {
      capslock = "overload(control, esc)";
      leftalt = "layer(util)";
      rightalt = "leftmeta";
    };
    "util:A" = {
      h = "left";
      j = "down";
      k = "up";
      l = "right";
    };
  };
}
