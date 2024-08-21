{
  ...
}
:
{
  users.users = 
  {
    adi = 
    {
      initialPassword = "letmein123";
      isNormalUser = true;
      openssh.authorizedKeys.keys = [];
      extraGroups = 
      [
        "wheel"
        "input"
      ];
    };
  };
}
