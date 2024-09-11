{ pkgs, ... }:

{
  nix.package = pkgs.nixVersions.nix_2_21;
  nix.configureBuildUsers = true;

  nixpkgs.hostPlatform = "aarch64-darwin";
  nixpkgs.config.allowUnfree = true;

  services.nix-daemon.enable = true;

  nix.settings = {
    substituters =
      [ "https://devenv.cachix.org" "https://workstation.cachix.org" ];

    trusted-public-keys = [
      "devenv.cachix.org-1:w1cLUi8dv3hnoSPGAuibQv+f9TZLr6cv/Hm9XgU50cw="
      "workstation.cachix.org-1:jtYBF2Nijpg3JDKhMJZxvxuNUYjyZFCpF6/THBS5Zes="
    ];

    trusted-substituters = [ "root" "0x77" ];
    trusted-users = [ "root" "0x77" ];
    experimental-features = "nix-command flakes";
    extra-nix-path = "nixpkgs=flake:nixpkgs";
    auto-optimise-store = true;
  };

  nix.extraOptions = ''
    extra-platforms = x86_64-darwin aarch64-darwin
  '';

  nix.distributedBuilds = true;

  nix.buildMachines = [

    {
      hostName = "ubuntu.0x77.computer";
      sshUser = "root";
      sshKey = "/var/root/.ssh/main.pub";
      systems = [ "x86_64-linux" "i686-linux" ];
      maxJobs = 128;
      supportedFeatures = [ "big-parallel" "kvm" "nixos-test" ];
    }
  ];

  nix.gc.automatic = true;
}
