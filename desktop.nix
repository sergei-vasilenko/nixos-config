{ config, pkgs, ... }:

{
  services.xserver.enable = true;
  services.xserver.displayManager.gdm.enable = true;
  services.xserver.desktopManager.gnome.enable = true;

  # Отключение ненужных GNOME-сервисов
  services.gnome.core-utilities.enable = false;
}
