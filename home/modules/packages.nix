{ config, pkgs, ... }:

{
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
    android-tools
    scrcpy
    flutter
    insomnia
    mongodb-compass

    # ========================
    # 📄 Documents & Reading
    # ========================
    sioyek

    # ========================
    # 📝 Office & Productivity
    # ========================
    libreoffice

    # ========================
    # 🧠 Knowledge / Notes
    # ========================
    logseq

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
}
