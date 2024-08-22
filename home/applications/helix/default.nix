{
  inputs,
  pkgs,
  ...
}
:
{  
  programs.helix = 
  {
    enable = true;
    package = inputs.helix.packages."${pkgs.system}".helix;
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
