{
  config,
  pkgs,
  ...
}: {
  home.packages = with pkgs; [
    zk
  ];
  programs.zk.enable = true;
  programs.zk.settings = {
    notebook.dir = "~/vaults/satyaloka";
    note = {
      language = "en";
      default-title = "Untitled Reverie";
      filename = "{{id}}-{{slug title}}";

      id-charset = "alphanunm";
      id-length = 4;
      id-case = "lower";
    };

    extra = {
      author = "Adithya Ajith";
      pseudonym = "adharmic";
      email = "adithya@satyaloka.org";
    };

    group.almanac = {
      paths = ["alamanac/computing"];
    };

    format.markdown = {
      hashtags = true;
      colon-tage = true;
    };

    tool = {
      editor = "${config.globalConfig.editor}";
      shell = "${config.globalConfig.shell}";
      fzf-preview = "bat -p --color always {-i}";
    };

    filter = {};

    alias = {
      edlast = "zk edit --limit 1 --sort modified- $@";

      recent = "zk edit --sort created- --created-after 'last two weeks' --interactive";
    };

    lsp = {
      diagnostics = {
        wiki-title = "hint";
        dead-link = "error";
      };
    };
  };
}
