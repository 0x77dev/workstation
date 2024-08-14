{ ... }:

{
  homebrew = {
    enable = true;
    global.autoUpdate = false;
    onActivation.autoUpdate = true;
    onActivation.upgrade = true;

    casks = [
      "arc"
      "spotify"
      "raycast"
      "protonvpn"
      "notion-calendar"
      "beeper"
      "google-chrome"
      "setapp"
      "spotify"
      "google-drive"
      "obs"
      "telegram"
      "tailscale"
      "balenaetcher"
      "audio-hijack"
      "gpg-suite"
      "discord"
      "element"
      "1password"
      "1password-cli"
      "keybase"
      "orbstack"
      "slack"
      "linear-linear"
      "zoom"
      "steam"
      "keka"
      "font-jetbrains-mono-nerd-font"
      "zulu"
      "miniconda"
      "ultimaker-cura"
      "notion"
    ];

    masApps = {
      "Things" = 904280696;
      "Meshtastic" = 1586432531;
      "Disk Speed Test" = 425264550;
      "Shapr3D" = 1091675654;
      "DaVinci Resolve" = 571213070;
      "WireGuard" = 1451685025;
      "Xcode" = 497799835;
      "Copilot" = 1447330651;
      "Blackmagic RAW Speed Test" = 1466185689;
      "Parcel" = 639968404;
    };
  };
}
