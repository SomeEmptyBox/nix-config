{ config, lib, pkgs, user, ... }:

{
  programs.firefox.profiles.${user} = {
    name = "${user}";
    id = 0;
    isDefault = true;
    search = {
      force = true;
      default = "DuckDuckGo";
      privateDefault = "DuckDuckGo";
      order = [ "DuckDuckGo" ];
    };
  };

  #home.file.".mozilla/firefox/peace/chrome" = {
  #  source = "~/NixOS/homeModules/guiPrograms/firefox/chrome";
  #  #target = "~/.mozilla/firefox/peace/chrome";
  #  recursive = true;
  #};
}
