{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
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
    ffmpeg
    aria2
    wget
    curl
    gnome.eog # Просмотр изображений
    evince # Просмотр PDF
    vlc # Просмотр видео
    flameshot # Для скриншотов
    simple-screen-recorder # Запись видео с экрана
    alacritty # Терминал

    # Разработка
    git
    neovim
    code-cursor
    postgresql
    nodejs-16_x
    nodejs-18_x
    rustc
    cargo
    go

    # Дополнительные утилиты
    htop
    ncdu
    rsync
    fdisk
    lm_sensors # Мониторинг температуры
    gnome.gnome-disk-utility # Управление дисками
    gnome.gnome-system-monitor # Мониторинг системы
  ];

  # Кодеки
  nixpkgs.config.allowUnfree = true; # Разрешить проприетарные пакеты
  hardware.pulseaudio.support32Bit = true; # Поддержка 32-битных кодеков
}