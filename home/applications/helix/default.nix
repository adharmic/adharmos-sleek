{
  pkgs,
  ...
}
:
{  
  programs.helix = 
  {
    enable = true;
    package = pkgs.helix;
    defaultEditor = true;
    languages = 
    {
      language = 
      [
        {
          name = "nix";
          formatter = { command = "alejandra";};
          auto-format = true;
        }
      ];
    };
  };
}
