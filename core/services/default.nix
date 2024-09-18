{pkgs, ...}
: {
  services.automatic-timezoned.enable = true;
  security.polkit.enable = true;
  services.greetd = {
    enable = true;
    settings = rec
    {
      initial_session = {
        command = "Hyprland";
        user = "adi";
      };
      default_session = initial_session;
    };
  };
  hardware.pulseaudio.enable = false;
  security.rtkit.enable = true;
  services.pipewire = {
    enable = true;
    alsa.enable = true;
    pulse.enable = true;
    jack.enable = true;
  };
  services.flatpak.enable = true;
  virtualisation.libvirtd = {
    enable = true;
    qemu = {
      package = pkgs.qemu_kvm;
      runAsRoot = true;
      swtpm.enable = true;
      ovmf = {
        enable = true;
        packages = [
          (pkgs.OVMF.override {
            secureBoot = true;
            tpmSupport = true;
          })
          .fd
        ];
      };
    };
  };
}
