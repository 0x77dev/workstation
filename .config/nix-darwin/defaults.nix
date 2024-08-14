{ ... }:

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
    menuExtraClock.ShowSeconds = true;
    CustomUserPreferences = {
      "/Users/0x77/Library/Preferences/ByHost/com.apple.controlcenter.plist" = {
        "Bluetooth" = 18;
        "Sound" = 16;
        "BatteryShowPercentage" = 1;
      };
      "/Users/0x77/Library/Preferences/ByHost/com.apple.Spotlight.plist" = {
        "MenuItemHidden" = 1;
      };
    };
    # universalaccess.closeViewScrollWheelToggle = true; # crashes...
  };
}
