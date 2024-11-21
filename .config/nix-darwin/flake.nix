{
  description = "environment for my mac";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";

    nix-darwin = {
      url = "github:LnL7/nix-darwin";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    nix-homebrew.url = "github:zhaofengli-wip/nix-homebrew";
    homebrew-core = {
      url = "github:homebrew/homebrew-core";
      flake = false;
    };

    homebrew-cask = {
      url = "github:homebrew/homebrew-cask";
      flake = false;
    };

    homebrew-bundle = {
      url = "github:homebrew/homebrew-bundle";
      flake = false;
    };

    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = { self, nix-darwin, nix-homebrew, homebrew-core, homebrew-cask
    , nixpkgs, homebrew-bundle, home-manager }@inputs: {

      darwinConfigurations = let
        mkDarwinConfig = hostname:
          nix-darwin.lib.darwinSystem {
            system = "aarch64-darwin";
            specialArgs = inputs;
            modules = [
              ./configuration.nix

              home-manager.darwinModules.home-manager
              {
                home-manager = {
                  useGlobalPkgs = true;
                  useUserPackages = true;
                  backupFileExtension = "nixhomemgrbak";
                  users."0x77" = import ./home;
                };
              }

              nix-homebrew.darwinModules.nix-homebrew
              {
                nix-homebrew = {
                  enable = true;
                  enableRosetta = true;
                  autoMigrate = true;
                  user = "0x77";

                  taps = {
                    "homebrew/homebrew-core" = homebrew-core;
                    "homebrew/homebrew-cask" = homebrew-cask;
                    "homebrew/homebrew-bundle" = homebrew-bundle;
                  };
                  mutableTaps = true;
                };
              }
            ];
          };
      in {
        "0x77macbook2021" = mkDarwinConfig "0x77macbook2021";
        "0x77beefy" = mkDarwinConfig "0x77beefy";
        "github-macos-runner" = mkDarwinConfig "github-macos-runner";
      };

      # Expose the package set for convenience
      darwinPackages = self.darwinConfigurations."0x77beefy".pkgs;
    };
}
