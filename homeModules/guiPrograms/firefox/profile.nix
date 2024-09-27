{ config, lib, pkgs, user, ... }:

{
  programs.firefox.profiles.${user.name} = {
    name = "${user.name}";
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
