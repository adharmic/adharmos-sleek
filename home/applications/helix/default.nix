{
  inputs,
  pkgs,
  ...
}
: {
  programs.helix = {
    enable = true;
    package = inputs.helix.packages."${pkgs.system}".helix;
    defaultEditor = true;
    settings = {
      theme = "bogster";
      editor.color-modes = true;
      editor.cursorline = true;
    };
    languages = {
      # the language-server option currently requires helix from the master branch at https://github.com/helix-editor/helix/
      language-server.typescript-language-server = with pkgs.nodePackages; {
        command = "${typescript-language-server}/bin/typescript-language-server";
        args = ["--stdio" "--tsserver-path=${typescript}/lib/node_modules/typescript/lib"];
      };

      language = [
        {
          name = "nix";
          formatter = {
            command = "alejandra";
          };
          auto-format = true;
        }
        {
          name = "c";
          formatter = {
            command = "clang-format";
          };
          auto-format = true;
        }
        {
          name = "html";
          formatter = {
            command = "prettierd";
          };
          auto-format = true;
        }
      ];
    };
  };
}
