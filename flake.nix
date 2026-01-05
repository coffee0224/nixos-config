{
  description = "NixOS configuration of coffee";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-25.05";
    home-manager.url = "github:nix-community/home-manager/release-25.05";
    home-manager.inputs.nixpkgs.follows = "nixpkgs";
  };

  outputs = inputs@{ self, nixpkgs, home-manager, ... }: {
  nixosConfigurations = {
      nixos = let
        username = "coffee";
        mylib = import ./mylib/utils.nix { inherit (nixpkgs) lib; };
        specialArgs = {inherit username mylib inputs; };

      in nixpkgs.lib.nixosSystem {
        inherit specialArgs;
        system = "x86_64-linux";

        modules = [
          ./hardware
          ./users/${username}/nixos.nix

          home-manager.nixosModules.home-manager
          {
            home-manager.useGlobalPkgs = true;
            home-manager.useUserPackages = true;
            home-manager.sharedModules = [];
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
