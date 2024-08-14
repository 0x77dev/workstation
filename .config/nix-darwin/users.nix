{ pkgs, ... }:
let
  wallpaperPath = ./assets/wallpaper.heic;
in
{
  users.users."0x77" = {
    home = "/Users/0x77";
    shell = pkgs.fish;
  };

  system.activationScripts.setFishAsShell.text = ''
    dscl . -create /Users/0x77 UserShell /run/current-system/sw/bin/fish
  '';

  system.activationScripts.setDesktopWallpaper.text = ''
    osascript -e "tell application \"System Events\" to tell every desktop to set picture to \"${wallpaperPath}\" as POSIX file"
  '';
}
