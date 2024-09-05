{pkgs, ...}
: {
  home.packages = with pkgs; [
    nil
    nodePackages.typescript-language-server
    vscode-langservers-extracted
    clang
    clang-tools
    markdown-oxide
    emmet-language-server
  ];
}
