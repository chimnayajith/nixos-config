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
    playerctl
    libinput-gestures
    libnotify
    # ========================
    # 🌐 Browsers
    # ========================
    firefox
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
    kdePackages.kdenlive
    qbittorrent
    # stremio added through flatpak

    # ========================
    # 🖼️ Window Manager Tools
    # ========================
    rofi
    feh
    alacritty
    flameshot
    lxappearance
    xob

    # ========================
    # 📁 File Management
    # ========================
    xfce.thunar
    xfce.thunar-archive-plugin
    xfce.thunar-volman
    gvfs

    # ========================
    # 🔤 Fonts
    # ========================
    nerd-fonts.jetbrains-mono
  ];
}
