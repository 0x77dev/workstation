{ config, pkgs, ... }:

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

  launchd.user.agents.aria2 = {
    serviceConfig = {
      ProgramArguments = [
        "${pkgs.aria2}/bin/aria2c"
        "--conf-path=${
          config.home-manager.users."0x77".xdg.configHome
        }/aria2/aria2.conf"
      ];
      KeepAlive = true;
      RunAtLoad = true;
      StandardOutPath = "/tmp/aria2.log";
      StandardErrorPath = "/tmp/aria2.err.log";
    };
  };

  # Used for backwards compatibility, please read the changelog before changing.
  # $ darwin-rebuild changelog
  system.stateVersion = 4;
}
