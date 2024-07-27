{ config, lib, pkgs, ... }:

{
  nix.package = pkgs.nixVersions.nix_2_21;
  services.nix-daemon.enable = true;
  nix.settings.experimental-features = "nix-command flakes";
  nix.configureBuildUsers = true;
  nixpkgs.hostPlatform = "aarch64-darwin";
  nixpkgs.config.allowUnfree = true;
}