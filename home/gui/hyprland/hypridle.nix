{pkgs, ...}
: {
  home.packages = with pkgs; [
    hypridle
  ];
  services.hypridle.settings = {
    general = {
      after_sleep_cmd = "systemctl suspend";
      ignore_dbus_inhibit = false;
    };

    listener = [
      {
        timeout = 600;
        on-timeout = "systemctl suspend";
        on-resume = "systemctl resume";
      }
    ];
  };
}
