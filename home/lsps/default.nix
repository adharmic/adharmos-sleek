{pkgs, ...}
: {
  home.packages = with pkgs; [
    nil
    nodePackages.typescript-language-server
    clang
    clang-tools
    markdown-oxide
    emmet-ls
  ];
}
