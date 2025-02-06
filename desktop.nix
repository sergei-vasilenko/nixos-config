{ config, pkgs, ... }:

{
  services.xserver.enable = true;
  services.xserver.displayManager.gdm.enable = true;
  services.xserver.desktopManager.gnome.enable = true;

  # Отключение ненужных GNOME-сервисов
  services.gnome.core-utilities.enable = false;

    # Установка Alacritty как терминала по умолчанию
  environment.variables.TERMINAL = "alacritty";
  programs.alacritty = {
    enable = true;
    settings = {
      window = {
        opacity = 0.9;
        decorations = "full";
      };
      font = {
        normal = {
          family = "Monospace";
          style = "Regular";
        };
        size = 12;
      };
    };
  };
}