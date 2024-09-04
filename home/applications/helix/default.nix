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
      editor.soft-wrap.enable = true;
    };
    languages = {
      # the language-server option currently requires helix from the master branch at https://github.com/helix-editor/helix/
      language-server.zk-lsp = {
        command = "zk";
        args = ["lsp"];
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
            command = "prettier";
          };
          auto-format = true;
        }
        {
          name = "rust";
          formatter = {
            command = "rustfmt";
          };
          auto-format = true;
        }
        {
          name = "markdown";
          formatter = {
            command = "prettier";
          };
          roots = [".zk"];
          scope = "source.md";
          file-types = ["md" "markdown"];
          language-servers = ["zk-lsp"];
          auto-format = true;
        }
        {
          name = "html";
          formatter = {
            command = "prettier";
          };
          auto-format = true;
        }
        {
          name = "typescript";
          formatter = {
            command = "prettier";
          };
          auto-format = true;
        }
      ];
    };
  };
}
