{ inputs, ... }:

{
  home.file.".mozilla/firefox/default/chrome/firefox-gnome-theme".source = inputs.firefox-gnome-theme;

  programs.firefox.profiles.default = {

    userChrome = ''
      @import "firefox-gnome-theme/userChrome.css"
    '';

    userContent = ''
      @import "firefox-gnome-theme/userContent.css"
    '';

  };
}
