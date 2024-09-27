{ config, lib, pkgs, inputs, user, host, system, ... }:

{
  imports = [ inputs.home-manager.nixosModules.home-manager ];
  
  home-manager = {
    useGlobalPkgs = true;
    useUserPackages = true;
    backupFileExtension = "backup";
    extraSpecialArgs = {inherit inputs user host system;};
    users.${user}.imports = [ ../home.nix ];
  };
}
