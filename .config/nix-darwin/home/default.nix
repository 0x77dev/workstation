{ config, lib, inputs, pkgs, ... }:

{
  home.stateVersion = "24.11";
  imports = [
    ./vscode.nix
    ./git.nix
    ./gpg.nix
    ./kitty.nix
    ./shell.nix
    ./browser.nix
    ./ssh.nix
    ./neovim.nix
    ./scripts.nix
  ];

  home.packages = [
    pkgs.direnv
    pkgs.devenv
    pkgs.cachix
    pkgs.hello
    pkgs.gh
    pkgs.neovim-unwrapped
    pkgs.jetbrains-mono
    (pkgs.nerdfonts.override { fonts = [ "JetBrainsMono" ]; })
  ];

  #   home.file = {
  #     ".config/1Password/ssh/agent.toml".source = sources/1password-cli/agent.toml;
  #   };

  home.sessionVariables = { PROJECT_PATHS = "~/Projects/*"; };

  programs.home-manager.enable = true;

  fonts.fontconfig.enable = true;
}
