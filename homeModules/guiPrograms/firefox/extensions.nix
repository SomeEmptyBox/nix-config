{
  pkgs,
  inputs,
  ...
}:

{
  programs.firefox.profiles.default.extensions = with inputs.firefox-addons.packages.${pkgs.system}; [
    proton-pass
    proton-vpn
    ublock-origin
  ];
}
