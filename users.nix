{ config, pkgs, ... }:

{
  users.users.sergei_v = {
    isNormalUser = true;
    extraGroups = [ "wheel" "networkmanager" "audio" "video" "bluetooth" ];
    initialPassword = "7";
  };

  # Автоматический вход в GNOME
  services.xserver.displayManager.gdm.autoLogin.enable = true;
  services.xserver.displayManager.gdm.autoLogin.user = "sergei_v";
}