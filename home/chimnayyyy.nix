{ config, pkgs, ... }:

{
  home.username = "chimnayyyy";
  home.homeDirectory = "/home/chimnayyyy";

  programs.home-manager.enable = true;

  programs.git = {
    enable = true;
    userName = "Chinmay";
    userEmail = "your-email@example.com";
  };

  programs.zsh.enable = true;

  home.packages = with pkgs; [
    neovim
    firefox
    vscode
    discord
    spotify
    telegram-desktop
    obs-studio
    vlc
    rofi
    feh
    alacritty
    btop
    unzip
    gh
    scrcpy
    android-studio
    google-chrome
  ];

  home.stateVersion = "24.11";
}
