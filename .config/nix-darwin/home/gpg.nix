{ config, lib, pkgs, ... }:

{
  programs.gpg = {
    enable = true;
    settings = {
      default-key = "3631F1294C1793261F2BD420043FAD613914D7E2";
    };
  };
}
