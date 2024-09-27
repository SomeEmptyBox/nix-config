{ config, user, ... }:

{
  programs.firefox.profiles.${user.name}.settings = {
    #"browser.startup.homepage" = "https://duckduckgo.com";
    "browser.search.region" = "GB";
    "browser.search.isUS" = false;
    "browser.bookmarks.showMobileBookmarks" = true;
    "distribution.searchplugins.defaultLocale" = "en-GB";
    "extensions.autoDisableScopes" = 0;
    "extensions.pocket.enabled" = false;
    "general.useragent.locale" = "en-GB";
    "identity.fxaccounts.enabled" = false;

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
