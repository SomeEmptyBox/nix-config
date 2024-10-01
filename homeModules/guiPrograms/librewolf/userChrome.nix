{ inputs, ... }:

{
  home.file.".librewolf/peace/chrome/firefox-gnome-theme".source = inputs.firefox-gnome-theme;

  programs.firefox.profiles.peace = {

    userChrome = ''
    @import "firefox-gnome-theme/userChrome.css"
    '';

    userContent = ''
    @import "firefox-gnome-theme/userContent.css"
    '';

  };
}
