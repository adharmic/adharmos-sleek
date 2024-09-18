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
      theme = "systheme";
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

      language-server.emmet-lsp = {
        command = "emmet-language-server";
        args = ["--stdio"];
      };

      language-server.vscode-json-language-server.config = {
        json = {
          validate = {
            enable = true;
          };
          format = {
            enable = true;
          };
        };
        provideFormatter = true;
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
          # roots = [".zk"];
          # scope = "source.md";
          file-types = ["md" "markdown"];
          language-servers = ["markdown-oxide"];
          auto-format = true;
        }
        {
          name = "typescript";
          language-servers = ["typescript-language-server" "vscode-eslint-language-server" "emmet-lsp"];
          formatter = {
            command = "prettier --parser typescript";
          };
          auto-format = true;
        }
        {
          name = "tsx";
          language-servers = ["typescript-language-server" "vscode-eslint-language-server" "emmet-lsp"];
          formatter = {
            command = "prettier --parser typescript";
          };
          auto-format = true;
        }
        {
          name = "jsx";
          language-servers = ["typescript-language-server" "vscode-eslint-language-server" "emmet-lsp"];
          formatter = {
            command = "prettier --parser typescript";
          };
          auto-format = true;
        }
        {
          name = "javascript";
          language-servers = ["typescript-language-server" "vscode-eslint-language-server" "emmet-lsp"];
          formatter = {
            command = "prettier --parser typescript";
          };
          auto-format = true;
        }
        {
          name = "json";
          language-servers = ["vscode-json-language-server"];
          formatter = {
            command = "prettier --parser json";
          };
          auto-format = true;
        }
        {
          name = "html";
          language-servers = ["vscode-html-language-server" "emmet-lsp"];
          formatter = {
            command = "prettier --parser html";
          };
          auto-format = true;
        }
        {
          name = "css";
          language-servers = ["vscode-css-language-server"];
          formatter = {
            command = "prettier --parser css";
          };
          auto-format = true;
        }
      ];
    };
  };
}
