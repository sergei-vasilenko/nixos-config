{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    networkmanager
  
    google-chrome
    firefox

    telegram-desktop
    whatsapp-for-linux

    # Утилиты
    obsidian
    gimp
    audacious
    fragments
    syncthing
    libreoffice-still
    ffmpeg
    aria2
    wget
    curl
    gnome.eog # Просмотр изображений
    evince # Просмотр PDF
    vlc # Просмотр видео
    flameshot # Для скриншотов
    nautilus
    gparted

    # Разработка
    git
    gedit
    code-cursor
    postgresql
    pgadmin4-desktopmode
    asdf-vm
    rustc
    cargo
    go
    nodejs

    # Дополнительные утилиты
    terminator
    zsh
    htop
    ncdu
    rsync
    yt-dlp
    lm_sensors # Мониторинг температуры
    gnome.gnome-disk-utility # Управление дисками
    gnome.gnome-system-monitor # Мониторинг системы
    ngrok

    # arch
    unzip
    zip
    gzip
  ];

  # Кодеки
  nixpkgs.config.allowUnfree = true; # Разрешить проприетарные пакеты
  hardware.pulseaudio.support32Bit = true; # Поддержка 32-битных кодеков
}
