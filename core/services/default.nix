{pkgs, ...}
: {
  security.polkit.enable = true;
  services.greetd = {
    enable = true;
    settings = rec
    {
      initial_session = {
        command = "${pkgs.sway}/bin/sway";
        user = "adi";
      };
      default_session = initial_session;
    };
  };
}
