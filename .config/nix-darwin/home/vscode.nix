{ config, lib, pkgs, ... }:

{
  programs.vscode = {
    enable = true;
    enableUpdateCheck = false;
    enableExtensionUpdateCheck = false;
    mutableExtensionsDir = false;
    userSettings = {
      "editor.inlineSuggest.suppressSuggestions" = true;
      "editor.fontFamily" = "'JetBrains Mono', monospace";
      "editor.fontLigatures" = true;
      "editor.detectIndentation" = true;
      "editor.accessibilitySupport" = "off";
      "editor.fontSize" = 14;
      "workbench.iconTheme" = "catppuccin-mocha";
      "workbench.colorTheme" = "GitHub Dark Default";
      "telemetry.telemetryLevel" = "off";
      "editor.formatOnSave" = false;
      "files.autoSave" = "afterDelay";
      "cody.autocomplete.formatOnAccept" = true;
      "editor.formatOnPaste" = true;
      "editor.codeActionsOnSave" = { "source.organizeImports" = true; };
      "files.autoSaveWhenNoErrors" = false;
      "terminal.integrated.profiles.osx" = {
        "bash" = {
          "path" = "bash";
          "args" = [ "-l" ];
          "icon" = "terminal-bash";
        };

        "zsh" = {
          "path" = "zsh";
          "args" = [ "-l" ];
        };
        "fish" = {
          "path" = "fish";
          "args" = [ "-l" ];
        };
      };
    };

    extensions = with pkgs.vscode-extensions;
      [
        catppuccin.catppuccin-vsc-icons
        catppuccin.catppuccin-vsc
        github.github-vscode-theme
        jnoortheen.nix-ide
        rust-lang.rust-analyzer
        vue.volar
        ms-azuretools.vscode-docker
        ms-vscode-remote.remote-ssh
        ms-python.python
        eamodio.gitlens
        github.vscode-pull-request-github
        github.vscode-github-actions
        github.codespaces
        tamasfe.even-better-toml
        bbenoist.nix
        prisma.prisma
        editorconfig.editorconfig
        dbaeumer.vscode-eslint
        mkhl.direnv
        esbenp.prettier-vscode
      ] ++ pkgs.vscode-utils.extensionsFromVscodeMarketplace [
        {
          name = "cody-ai";
          publisher = "sourcegraph";
          version = "1.28.0";
          sha256 = "Tn2Hii60CUMC40Ntw5sSsD5uKOsjgTQusQsCa8/LrwM=";
        }
        {
          name = "bun-vscode";
          publisher = "oven";
          version = "0.0.12";
          sha256 = "8+Fqabbwup6Jzm5m8GlWbxTqumqXtWAw5s3VaDht9Us=";
        }
      ];
  };
}
