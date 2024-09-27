{ config, lib, pkgs, inputs, user, ... }:

{
  imports = [ inputs.home-manager.nixosModules.home-manager ];
  
  home-manager = {
    useGlobalPkgs = true;
    useUserPackages = true;
    backupFileExtension = "backup";
    extraSpecialArgs = {inherit inputs user;};
    users.${user.name}.imports = [ ../home.nix ];
  };
}
