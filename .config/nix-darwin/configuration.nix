{ ... }:

{
  imports = [
    ./nix.nix
    ./system.nix
    ./homebrew.nix
    ./shell.nix
    ./users.nix
    ./defaults.nix
    ./security.nix
  ];

  # Used for backwards compatibility, please read the changelog before changing.
  # $ darwin-rebuild changelog
  system.stateVersion = 4;
}
