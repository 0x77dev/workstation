{ config, lib, inputs, pkgs, ... }:

let
  commonAliases = {
    aria2p = "aria2p -s aria2";
    pbdownload = ''aria2p -s aria2 add "$(pbpaste)"'';
  };
in {
  programs.bash = {
    enable = true;
    shellAliases = commonAliases;
  };

  programs.zsh = {
    enable = true;
    shellAliases = commonAliases;
  };

  programs.fish = {
    enable = true;
    shellAliases = commonAliases;
    interactiveShellInit = ''
      set fish_greeting # Disable greeting
      for p in /run/current-system/sw/bin
        if not contains $p $fish_user_paths
          set -g fish_user_paths $p $fish_user_paths
        end
      end
      fish_add_path /opt/homebrew/bin
      fish_add_path $HOME/.bun/bin
      fish_add_path $HOME/.local/bin
      if command -v conda >/dev/null 2>&1
        eval "$(conda "shell.fish" hook)"
      end
    '';
    plugins = [
      {
        name = "git-abbr";
        src = pkgs.fishPlugins.git-abbr.src;
      }
      {
        name = "autopair";
        src = pkgs.fishPlugins.autopair.src;
      }
      {
        name = "fifc";
        src = pkgs.fishPlugins.fifc.src;
      }
      {
        name = "bass";
        src = pkgs.fishPlugins.bass.src;
      }
      {
        name = "z";
        src = pkgs.fishPlugins.z.src;
      }
    ];
  };

  programs.direnv = {
    enable = true;
    nix-direnv.enable = true;
  };

  programs.starship = {
    enable = true;
    enableFishIntegration = true;
    enableBashIntegration = true;
    enableZshIntegration = true;
  };
}
