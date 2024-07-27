{ config, lib, pkgs, ... }:

{
  system.defaults = {
    dock.autohide = true;
    dock.show-recents = false;
    dock.mru-spaces = false;
    finder.AppleShowAllExtensions = true;
    finder.AppleShowAllFiles = true;
    finder.CreateDesktop = false;
    finder.FXDefaultSearchScope = "SCcf"; # Current Folder
    finder.QuitMenuItem = true;
    NSGlobalDomain = {
      _HIHideMenuBar = false;
      AppleInterfaceStyle = "Dark";
      AppleKeyboardUIMode = 3;
      AppleScrollerPagingBehavior = true;
      AppleShowAllExtensions = true;
      AppleShowAllFiles = true;
      InitialKeyRepeat = 10;
      KeyRepeat = 2;
      NSAutomaticSpellingCorrectionEnabled = false;
      NSAutomaticWindowAnimationsEnabled = false;
      NSWindowResizeTime = 0.0;
      "com.apple.sound.beep.feedback" = 0;
      "com.apple.trackpad.scaling" = 2.0;
    };
    # universalaccess.closeViewScrollWheelToggle = true; # crashes...
  };

  system.activationScripts.setFishAsShell.text = ''
    dscl . -create /Users/0x77 UserShell /run/current-system/sw/bin/fish
  '';

  environment.shells = [ pkgs.fish ];
  users.users."0x77" = {
    home = "/Users/0x77";
    shell = pkgs.fish;
  };

  security.pam.enableSudoTouchIdAuth = true;

  environment.systemPackages = with pkgs; [
    vscode
    kitty
    vim
    curl
    gitAndTools.gitFull
    git-crypt
    fish
    neovim
    nodePackages.nodejs
    bun
    rustc
    cargo
    nixpkgs-fmt
    nixfmt
    yadm
    bat
    chafa
    hexyl
    fd
    eza
    ripgrep
    procs
    broot
    yazi
  ];
}
