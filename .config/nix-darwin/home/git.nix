{ config, lib, pkgs, ... }:

{
  programs.git = {
    enable = true;
    package = pkgs.gitAndTools.gitFull;
    delta = { enable = true; };
    signing = {
      key = "3631F1294C1793261F2BD420043FAD613914D7E2";
      signByDefault = true;
    };
    userName = "Mykhailo Marynenko";
    userEmail = "mykhailo@0x77.dev";
  };

  programs.gh.enable = true;
  programs.gh.settings = {
    git_protocol = "ssh";
    editor = "code --wait";

    prompt = "enabled";

    aliases = {
      co = "pr checkout";
      pv = "pr view";
    };
  };
}
