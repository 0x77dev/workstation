{pkgs, ...}:

{
  home.packages = with pkgs; [
    (nerdfonts.override { fonts = [ "JetBrainsMono" ]; })
    pkgs.jetbrains-mono
  ];

  fonts.fontconfig.enable = true;
}