{
  config,
  lib,
  pkgs,
  ...
}:

{
  options.guiPrograms.firefox.policies.enable = lib.mkEnableOption "firefox policies";
  config = lib.mkIf config.guiPrograms.firefox.policies.enable {

    programs.firefox.policies = {
      DisableTelemetry = true;
      DisableFirefoxStudies = true;
      EnableTrackingProtection = {
        Value= true;
        Locked = true;
        Cryptomining = true;
        Fingerprinting = true;
      };
      DisablePocket = true;
      DisableFirefoxAccounts = true;
      DisableAccounts = true;
      DisableFirefoxScreenshots = true;
      OverrideFirstRunPage = "";
      OverridePostUpdatePage = "";
      DontCheckDefaultBrowser = true;
      DisplayMenuBar = "default-off"; # alternatives: "always", "never" or "default-on"
      SearchBar = "unified";
      PasswordManagerEnabled = false;
    };

  };
}
