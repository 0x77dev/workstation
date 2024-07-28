{ pkgs, ... }: {
  home.packages = with pkgs;
    [
      (writeShellScriptBin "workstation:update"
        (builtins.readFile ./scripts/update))
    ];
}
