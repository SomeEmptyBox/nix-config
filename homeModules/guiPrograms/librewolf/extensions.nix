{ config, pkgs, inputs, user, ... }:

{
  programs.firefox.profiles.${user.name}.extensions = with inputs.firefox-addons.packages.${pkgs.system}; [
    proton-pass
    proton-vpn
    ublock-origin
  ];
}
