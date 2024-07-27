# Workstation

This repository contains my personal workstation configuration using [nix-darwin](https://github.com/LnL7/nix-darwin), [home-manager](https://github.com/nix-community/home-manager), [yadm](https://yadm.io/), and various other tools. 

The motivation for this repository is to provide a simple way to setup a workstation with a consistent and reproducible configuration configured to my taste. Prevously it was a private repository, but since I have a lot of friends and colleagues asked for my configs, I decided to open it up, but things are still in progress of migration to the public repository.

- nix-darwin for overall system configuration
- home-manager for user environment management
- yadm for dotfiles management
- Homebrew for additional software installation
- VSCode as the primary code editor
- GPG for encryption and signing
- Keybase for PGP key management
- 1Password for passwords, secrets and SSH key management
- Fish as the default shell
- Various command-line tools (e.g., httpie, bat, ripgrep, fzf, btop)
- Arc browser and other productivity apps
- Orbstack for Docker and Kubernetes
- Neovim (work in progress)

Almost all of the setup is handled by nix-darwin and home-manager.

## Pre-requisites

- Install [nix](https://nixos.org/download.html)
- Install [yadm](https://yadm.io/)
- Fork this repository

## Installation

Bootstrap the system using the following command:

```bash
yadm clone --bootstrap $REPO_URL
```
