{
  imports = [
    ./bookmarks.nix
    ./extensions.nix
    ./policies.nix
    ./searchEngines.nix
    ./settings.nix
    ./userChrome.nix
  ];

  programs.firefox.profiles.default = {
    name = "default";
    id = 0;
    isDefault = true;
    search = {
      force = true;
      default = "DuckDuckGo";
      privateDefault = "DuckDuckGo";
      order = [ "DuckDuckGo" ];
    };
  };
}
