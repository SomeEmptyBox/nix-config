{
  programs.firefox.profiles.peace = {

    userChrome = ''
    @import "firefox-gnome-theme/userChrome.css"
    '';

    userContent = ''
    @import "firefox-gnome-theme/userContent.css"
    '';

  };
}
