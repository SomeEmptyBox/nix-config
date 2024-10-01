{ config, user, ... }:

{
  programs.firefox.profiles.${user.name}.settings = {
    "extensions.autoDisableScopes" = 0;
    "privacy.resistFingerprinting" = false;
    "browser.toolbars.bookmarks.visibility" = "newtab";
    "privacy.donottrackheader.enabled" = true;
    "privacy.clearOnShutdown.cookies" = false;
    "privacy.clearHistory.cookiesAndStorage" = false;
    "privacy.clearSiteData.cookiesAndStorage" = false;


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
