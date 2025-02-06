{ config, pkgs, ... }:

{
  imports = [
    ./hardware-configuration.nix
    ./users.nix
    ./desktop.nix
    ./packages.nix
    ./services.nix
    ./networking.nix
    ./development.nix
  ];

  # Базовая настройка системы
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;
  boot.kernelParams = [ "elevator=noop" ]; # Оптимизация для SSD

  # Файловая система
  fileSystems."/".options = [ "noatime" "discard" ]; # Оптимизации для SSD

  # Локализация
  time.timeZone = "Asia/Kolkata";
  i18n.defaultLocale = "ru_RU.UTF-8";
  console.keyMap = "us";
  services.xserver.layout = "us,ru";
  services.xserver.xkbOptions = "grp:alt_space_toggle"; # Переключение раскладки

  # Обновления
  system.autoUpgrade.enable = true;
  system.autoUpgrade.allowReboot = false; # Не перезагружать автоматически

  system.stateVersion = "24.11"; # Версия NixOS
}
