{
  config,
  lib,
  pkgs,
  inputs,
  ...
}:

{
  imports = [ inputs.nixos-cosmic.nixosModules.default ];

  options.cosmic.enable = lib.mkEnableOption "cosmic";
  config = lib.mkIf config.cosmic.enable {

    nix.settings = {
      substituters = [ "https://cosmic.cachix.org/" ];
      trusted-public-keys = [ "cosmic.cachix.org-1:Dya9IyXD4xdBehWjrkPv6rtxpmMdRel02smYzA85dPE=" ];
    };

    services = {
      desktopManager.cosmic.enable = false;
      displayManager.cosmic-greeter.enable = false;
    };

  };
}
