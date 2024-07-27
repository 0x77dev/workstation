{ config, lib, pkgs, ... }:

{ 
  programs.ssh = { 
    enable = true;
    extraConfig = ''
      Host *
        IdentityAgent "~/Library/Group Containers/2BUA8C4S2C.com.1password/t/agent.sock"
    '';
  };

  home.file.".config/1Password/ssh/agent.toml".source = sources/1password-agent.toml;
}