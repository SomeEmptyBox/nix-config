{ config, pkgs, inputs, user, ... }:

{
  programs.firefox.profiles.${user}.extensions = with inputs.firefox-addons.packages.${pkgs.system}; [
    proton-pass
    proton-vpn
    ublock-origin
  ];
}
