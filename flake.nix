{
  description = "NixOS Flake Configuration";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    catppuccin.url = "github:catppuccin/nix";
    nixos-cosmic.url = "github:lilyinstarlight/nixos-cosmic";

    firefox-addons = {
      url = "gitlab:rycee/nur-expressions?dir=pkgs/firefox-addons";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    firefox-gnome-theme = {
      url = "github:rafaelmardojai/firefox-gnome-theme";
      flake = false;
    };

    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    hyprland.url = "github:hyprwm/Hyprland";
    hyprland-plugins = {
      url = "github:hyprwm/hyprland-plugins";
      inputs.hyprland.follows = "hyprland";
    };

    nixvim = {
      url = "github:nix-community/nixvim";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    stylix = {
      url = "github:danth/stylix";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs =
    {
      self,
      nixpkgs,
      home-manager,
      ...
    }@inputs:
    let
      user = {
        name = "peace";
        host = "nixos";
        system = "x86_64-linux";
        assets = "~/nix-config/assets";
      };
    in
    {

      nixosConfigurations.${user.host} = nixpkgs.lib.nixosSystem {
        specialArgs = {
          inherit inputs user;
        };
        modules = [
          ./config.nix

          home-manager.nixosModules.home-manager
          {
            home-manager = {
              useGlobalPkgs = true;
              useUserPackages = true;
              backupFileExtension = "backup";
              extraSpecialArgs = {
                inherit inputs user;
              };
              users.${user.name} = import ./home.nix;
            };
          }

        ];
      };

      #homeConfigurations."${user.name}@${user.host}" = home-manager.lib.homeManagerConfiguration {
      #  pkgs = nixpkgs.legacyPackages.${user.system};
      #  extraSpecialArgs = {inherit inputs user;};
      #  modules = [ ./homeModules ];
      #};

    };
}
