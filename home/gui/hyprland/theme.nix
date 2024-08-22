{
  pkgs,
  ...
}
:
{
  home.pointerCursor = {
    package = pkgs.oreo-cursors-plus;
    name = "oreo_spark_black_bordered_cursors";
    size = 32;
  };

  gtk = {
    enable = true;

    theme = {
      package = pkgs.flat-remix-gtk;
      name = "Flat-Remix-GTK-Grey-Darkest";
    };
  };
}
