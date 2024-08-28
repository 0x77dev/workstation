{ config, lib, pkgs, ... }:

{

  programs.aria2 = {
    enable = true;
    settings = {
      dir = "/Users/0x77/Downloads";
      listen-port = 6881;
      dht-listen-port = 6881;
      enable-rpc = true;
      rpc-listen-all = false;
      rpc-listen-port = 6800;
      rpc-secret = "aria2";
      max-concurrent-downloads = 5;
      max-connection-per-server = 16;
      min-split-size = "1M";
      split = 16;
      max-overall-download-limit = 0;
      max-download-limit = 0;
      max-overall-upload-limit = "1M";
      max-upload-limit = "50K";
      continue = true;
      allow-overwrite = true;
      file-allocation = "falloc";
      disk-cache = "64M";
      log-level = "info";
      all-proxy = "http://dockge.0x77.computer:3128";
    };
  };
}
