{ config, lib, pkgs, ... }:

{
  programs.kitty = {
    enable = true;
    theme = "Catppuccin-Mocha";
    font = { name = "JetBrains Mono"; };
  };
}
