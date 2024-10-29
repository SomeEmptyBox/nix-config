{
  programs.firefox.profiles.default.settings = {
    "extensions.autoDisableScopes" = 0;
    "browser.toolbars.bookmarks.visibility" = "newtab";
    # "privacy.resistFingerprinting" = false;
    # "privacy.clearOnShutdown.cookies" = false;
    # "privacy.clearOnShutdown_v2.cookiesAndStorage" = false;
    "privacy.donottrackheader.enabled" = true;

    # firefox gnome theme
    "toolkit.legacyUserProfileCustomizations.stylesheets" = true;
    "browser.uidensity" = 0;
    "svg.context-properties.content.enabled" = true;
    "browser.theme.dark-private-windows" = false;
    "widget.gtk.rounded-bottom-corners.enabled" = true;
    "gnomeTheme.hideSingleTab" = false;
    "gnomeTheme.bookmarksToolbarUnderTabs" = true;
    "gnomeTheme.dragWindowHeaderbarButtons" = true;
    "gnomeTheme.oledBlack" = true;
    "layers.acceleration.force-enabled" = true;
  };
}
