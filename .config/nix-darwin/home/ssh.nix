{ config, lib, pkgs, ... }:

{
  programs.ssh = {
    enable = true;
    extraConfig = ''
      Host hf.co
        IdentityFile ~/.ssh/main.pub
        IdentityAgent "~/Library/Group Containers/2BUA8C4S2C.com.1password/t/agent.sock"
        IdentitiesOnly yes

      Host *
        IdentityAgent "~/Library/Group Containers/2BUA8C4S2C.com.1password/t/agent.sock"

      Host home
        HostName home.0x77.computer
        User root
        IdentityAgent "~/Library/Group Containers/2BUA8C4S2C.com.1password/t/agent.sock"
    '';
  };

  home.file.".config/1Password/ssh/agent.toml".source =
    sources/1password-agent.toml;

  home.file.".ssh/main.pub".source = sources/main.pub;
}
