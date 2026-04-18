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

    # ========================
    # 🧠 Core CLI Tools
    # ========================
    neovim
    vim
    btop
    unzip
    gh
    zoxide
    brightnessctl

    # ========================
    # 🌐 Browsers
    # ========================
    firefox-unwrapped
    google-chrome

    # ========================
    # 💻 Development
    # ========================
    vscode
    android-studio
    scrcpy
    flutter
    insomnia

    # ========================
    # 📄 Documents & Reading
    # ========================
    sioyek

    # ========================
    # 📝 Office & Productivity
    # ========================
    libreoffice

    # ========================
    # 💬 Communication
    # ========================
    discord
    telegram-desktop
    zulip

    # ========================
    # 🎵 Media & Entertainment
    # ========================
    spotify
    vlc
    obs-studio

    # ========================
    # 🖼️ Window Manager Tools
    # ========================
    rofi
    feh
    alacritty

    # ========================
    # 📁 File Management
    # ========================
    xfce.thunar
    xfce.thunar-archive-plugin
    xfce.thunar-volman
    gvfs
  ];

  home.stateVersion = "24.11";
}
