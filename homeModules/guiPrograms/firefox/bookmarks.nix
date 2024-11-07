{
  programs.firefox.profiles.default.bookmarks = [

    {
      name = "Nix Sites";
      toolbar = true;
      bookmarks = [

        {
          name = "NixOS Wiki";
          tags = [
            "nix"
            "wiki"
          ];
          keyword = "wiki";
          url = "https://wiki.nixos.org";
        }

        {
          name = "NixOS Status";
          tags = [
            "nix"
            "status"
          ];
          keyword = "status";
          url = "https://status.nixos.org";
        }

        {
          name = "NixOS Config";
          tags = [
            "nix"
            "config"
          ];
          keyword = "config";
          url = "https://github.com/SomeEmptyBox/nixcfg";
        }

      ];
    }

    {
      name = "Proton Sites";
      toolbar = true;
      bookmarks = [

        {
          name = "Proton Accout";
          tags = [
            "proton"
            "account"
          ];
          keyword = "account";
          url = "https://account.proton.me";
        }

        {
          name = "Proton Mail";
          tags = [
            "proton"
            "mail"
          ];
          keyword = "mail";
          url = "https://mail.proton.me/u/0/inbox";
        }

        {
          name = "Proton Drive";
          tags = [
            "proton"
            "drive"
          ];
          keyword = "drive";
          url = "https://drive.proton.me/u/0";
        }

      ];
    }

  ];
}
