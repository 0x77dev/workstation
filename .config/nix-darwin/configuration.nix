{ config, lib, inputs, pkgs, homebrew, ... }:

{
  imports = [ ./nix.nix ./system.nix ./homebrew.nix ];

  # Used for backwards compatibility, please read the changelog before changing.
  # $ darwin-rebuild changelog
  system.stateVersion = 4;
}
