{
  config,
  lib,
  pkgs,
  ... 
}:

{
  imports = [
    ./bookmarks.nix
    ./extensions.nix
    ./policies.nix
    ./searchEngines.nix
    ./settings.nix
    ./userChrome.nix
  ];

  options.guiPrograms.firefox.enable = lib.mkEnableOption "firefox";
  config = lib.mkIf config.guiPrograms.firefox.enable {

    programs.firefox = {
      enable = true;

      profiles.${config.home.username} = {
        name = "${config.home.username}";
        id = 0;
        isDefault = true;
        search = {
          force = true;
          default = "DuckDuckGo";
          privateDefault = "DuckDuckGo";
          order = [ "DuckDuckGo" ];
        };
      };

    };

  };
}
