{
  user,
  ...
}:

{
  programs.fastfetch.settings = {

    display = {
      key.width = 4;
      separator = "";
      size.binaryPrefix = "si";
    };

    logo = {
      preserveAspectRatio = true;
      source = "${user.assets}/nixos-logo.png";
      type = "kitty";
      height = 9;
      #width = 20;
      padding.left = 1;
    };

    modules = [
      #"break"
      "break"

      {
        key = " ";
        type = "os";
        keyColor = "blue";
        format = "{3}";
      }

      {
        key = "󰌽 ";
        type = "kernel";
        keyColor = "yellow";
      }

      {
        key = "󰅐 ";
        type = "uptime";
        keyColor = "green";
      }

      {
        key = " ";
        type = "memory";
      }

      {
        key = " ";
        type = "packages";
        keyColor = "red";
      }

      {
        key = " ";
        type = "wm";
        keyColor = "cyan";
      }

      {
        key = " ";
        type = "colors";
        keyColor = "magenta";
        symbol = "circle";
      }
    ];

  };
}
