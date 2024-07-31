{ config, lib, pkgs, ... }:

{
  nix.package = pkgs.nixVersions.nix_2_21;
  services.nix-daemon.enable = true;
  nix.settings.experimental-features = "nix-command flakes";
  nix.configureBuildUsers = true;
  nixpkgs.hostPlatform = "aarch64-darwin";
  nixpkgs.config.allowUnfree = true;
  nix.settings = {
    substituters = [
      "http://192.168.0.33:28265/workstation"
    ];
    trusted-public-keys = [
      "workstation:cg6baMXMpVzrRcGMQvORNVIKSPSzoODYSeAayneapQg="
    ];
  };
  nix.gc.automatic = true;
  nix.settings.auto-optimise-store = true;
}
