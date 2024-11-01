{
  pkgs,
  ...
}:

{
  programs.kitty = {

    font = {
      name = "JetBrainsMonoNF-SemiBold";
      size = 12;
      package = pkgs.nerdfonts.override { fonts = [ "JetBrainsMono" ]; };
    };

    settings = {
      window_padding_width = 5;
      confirm_os_window_close = 0;
    };

  };
}
