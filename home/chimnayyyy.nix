{ config, pkgs, ... }:

{
  imports = [
    ./modules/packages.nix
    ./modules/zsh.nix
    ./modules/git.nix
  ];

  home.username = "chimnayyyy";
  home.homeDirectory = "/home/chimnayyyy";

  programs.home-manager.enable = true;

  home.stateVersion = "24.11";
}