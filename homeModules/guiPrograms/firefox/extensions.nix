{
  pkgs,
  inputs,
  ...
}:

{
  programs.firefox.profiles.default.extensions = with inputs.firefox-addons.packages.${pkgs.system}; [
    firefox-color
    proton-pass
    proton-vpn
    stylus
    ublock-origin
  ];
}
