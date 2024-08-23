{pkgs, ...}
: {
  users.users = {
    adi = {
      shell = pkgs.fish;
      initialPassword = "letmein123";
      isNormalUser = true;
      openssh.authorizedKeys.keys = [];
      extraGroups = [
        "wheel"
        "input"
      ];
    };
  };
}
