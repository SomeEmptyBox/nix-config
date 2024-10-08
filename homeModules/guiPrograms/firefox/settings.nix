{ config, user, ... }:

{
  programs.firefox.profiles.${user.name}.settings = {
    "extensions.autoDisableScopes" = 0;
    "browser.toolbars.bookmarks.visibility" = "newtab";


    # firefox gnome theme
    "toolkit.legacyUserProfileCustomizations.stylesheets" = true;
    "browser.uidensity" = 0;
    "svg.context-properties.content.enabled" = true;
    "browser.theme.dark-private-windows" = false;
    "widget.gtk.rounded-bottom-corners.enabled" = true;
    "gnomeTheme.hideSingleTab" = true;
    "gnomeTheme.bookmarksToolbarUnderTabs" = true;
    "gnomeTheme.dragWindowHeaderbarButtons" = true;
    "gnomeTheme.oledBlack" = true;
    "layers.acceleration.force-enabled" = true;
  };
}
