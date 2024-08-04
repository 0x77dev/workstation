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
  ];

  home.packages = [
    # General
    pkgs.direnv
    pkgs.devenv
    pkgs.cachix
    pkgs.hello
    pkgs.gh
    pkgs.neovim-unwrapped

    # Fonts
    (pkgs.nerdfonts.override { fonts = [ "JetBrainsMono" ]; })
    pkgs.jetbrains-mono

    # Scripts
    (pkgs.writeShellScriptBin "workstation-update" (builtins.readFile ./scripts/update))
    (pkgs.writeShellScriptBin "workstation-commit" (builtins.readFile ./scripts/commit))
  ];

  home.sessionVariables = {
    PROJECT_PATHS = "~/Projects/*";
  };

  fonts.fontconfig.enable = true;
  programs.home-manager.enable = true;
  home.stateVersion = "24.11";
}
