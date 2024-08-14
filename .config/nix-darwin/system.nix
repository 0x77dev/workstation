{ pkgs, ... }:

{
  system.activationScripts.installRosetta.text = ''
    sudo softwareupdate --install-rosetta --agree-to-license
  '';

  environment.variables = {
    REQUESTS_CA_BUNDLE = "/etc/ssl/certs/ca-certificates.crt";
  };

  environment.systemPackages = with pkgs; [
    android-tools
    awscli2
    bat
    binwalk
    broot
    btop
    bun
    cachix
    cargo
    chafa
    charm
    curl
    devenv
    devenv
    direnv
    direnv
    docker
    eza
    fd
    ffmpeg
    fish
    fzf
    gh
    glow
    git-crypt
    gitAndTools.gitFull
    hexyl
    httpie
    hwatch
    jetbrains-mono
    jq
    kitty
    kubectl
    neovim
    nixd
    nixfmt-classic
    nixpkgs-fmt
    nmap
    nodePackages.nodejs
    procs
    ripgrep
    shell-gpt
    vim
    vscode
    yadm
    yazi
    yq
  ];
}
