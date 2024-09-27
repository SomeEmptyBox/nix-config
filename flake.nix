{
  description = "NixOS Flake Configuration";

  inputs = {

    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    catppuccin.url = "github:catppuccin/nix";

    firefox-addons = {
      url = "gitlab:rycee/nur-expressions?dir=pkgs/firefox-addons";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    #hyprland.url = "git+https://github.com/hyprwm/Hyprland?submodules=1";
    #hyprland-plugins = {
    #  url = "github:hyprwm/hyprland-plugins";
    #  inputs.hyprland.follows = "hyprland";
    #};

    nixos-cosmic = {
      url = "github:lilyinstarlight/nixos-cosmic";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    nixvim = {
      url = "github:nix-community/nixvim";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    stylix.url = "github:danth/stylix";

  };

  outputs = { self, nixpkgs, home-manager, ... }@inputs:
  let
    user = "peace";
    host = "nixos";
    system = "x86_64-linux";
  in
  {

    nixosConfigurations.${host} = nixpkgs.lib.nixosSystem {
      specialArgs = {inherit inputs user host system;};
      modules = [ ./nixosModules/default.nix ];
    };

    #homeConfigurations."${user}@${host}" = home-manager.lib.homeManagerConfiguration {
    #  pkgs = nixpkgs.legacyPackages.${system};
    #  extraSpecialArgs = {inherit inputs user host system;};
    #  modules = [./homeModules/default.nix];
    #};

  };
}
