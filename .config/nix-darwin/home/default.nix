{ config, lib, inputs, pkgs, ... }:

{
  imports = [
    ./vscode.nix
    ./git.nix
    ./gpg.nix
    ./kitty.nix
    ./shell.nix
    ./browser.nix
    ./ssh.nix
    ./neovim.nix
    ./fonts.nix
  ];

  home.packages = [
    pkgs.direnv
    pkgs.devenv
    pkgs.cachix
    pkgs.hello
    pkgs.gh
    pkgs.neovim-unwrapped
  ];

  home.sessionVariables = {
    PROJECT_PATHS = "~/Projects/*";
  };

  programs.home-manager.enable = true;
  home.stateVersion = "24.11";
}
