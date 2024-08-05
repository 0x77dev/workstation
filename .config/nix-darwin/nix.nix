{ pkgs, ... }:

{
  nix.package = pkgs.nixVersions.nix_2_21;
  services.nix-daemon.enable = true;
  nix.settings.experimental-features = "nix-command flakes";
  nix.configureBuildUsers = true;
  nixpkgs.hostPlatform = "aarch64-darwin";
  nixpkgs.config.allowUnfree = true;
  nix.settings = {
    substituters =
      [ "https://devenv.cachix.org" ];
    trusted-public-keys = [
      "devenv.cachix.org-1:w1cLUi8dv3hnoSPGAuibQv+f9TZLr6cv/Hm9XgU50cw="
    ];
    trusted-substituters = [ "root" "0x77" ];
    trusted-users = [ "root" "0x77" ];
  };
  nix.gc.automatic = true;
  nix.settings.auto-optimise-store = true;
}
