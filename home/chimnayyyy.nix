{ config, pkgs, ... }:

{
  home.username = "chimnayyyy";
  home.homeDirectory = "/home/chimnayyyy";

  programs.home-manager.enable = true;

  programs.git = {
    enable = true;
    settings = {
	user.name = "chimnayajith";
	user.email = "chinmayajith30@gmail.com";
    };
  };

  programs.zsh = {
    enable = true;

    enableCompletion = true;
    autosuggestion.enable = true;
    syntaxHighlighting.enable = true;

    oh-my-zsh = {
      enable = true;
      theme = "robbyrussell";
      plugins = [ "git" ];
    };

    shellAliases = {
      # you can add your aliases here later
    };

    initExtra = ''
    # Powerlevel10k instant prompt
    if [[ -r "''${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-''${(%):-%n}.zsh" ]]; then
      source "''${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-''${(%):-%n}.zsh"
    fi

    export ZSH="$HOME/.oh-my-zsh"

    eval "$(zoxide init zsh --cmd cd)"
  '';
  };


  home.packages = with pkgs; [
    neovim
    vim
    zoxide
    firefox-unwrapped
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
