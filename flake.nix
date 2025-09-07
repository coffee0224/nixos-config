{
  description = "NixOS configuration of coffee";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-25.05";
    home-manager.url = "github:nix-community/home-manager/release-25.05";
    home-manager.inputs.nixpkgs.follows = "nixpkgs";
    plasma-manager = {
      url = "github:nix-community/plasma-manager";
      inputs.nixpkgs.follows = "nixpkgs";
      inputs.home-manager.follows = "home-manager";
    };
  };

  outputs = inputs@{ self, nixpkgs, home-manager, plasma-manager, ... }: {
  nixosConfigurations = {
      nixos = let
        username = "coffee";
        specialArgs = { inherit username; };
      in nixpkgs.lib.nixosSystem {
        inherit specialArgs;
        system = "x86_64-linux";

        modules = [
          ./configuration.nix
          ./users/${username}/nixos.nix

          home-manager.nixosModules.home-manager
          {
            home-manager.useGlobalPkgs = true;
            home-manager.useUserPackages = true;
            home-manager.sharedModules = [ plasma-manager.homeModules.plasma-manager ];
            home-manager.extraSpecialArgs = inputs // specialArgs;
            home-manager.backupFileExtension = "backup";
            home-manager.users.${username} =
              import ./users/${username}/home.nix;
          }
        ];
      };
    };
  };
}
