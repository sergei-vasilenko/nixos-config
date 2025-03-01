{ config, pkgs, ... }:

{
  # Bluetooth
  hardware.bluetooth.enable = true;
  services.blueman.enable = true;

  # PostgreSQL
  services.postgresql = {
    enable = true;
    package = pkgs.postgresql_15;
    enableTCPIP = true;
    authentication = ''
      local all all trust
      host all all 127.0.0.1/32 trust
      host all all ::1/128 trust
    '';
    initialScript = pkgs.writeText "postgresql-init.sql" ''
      CREATE USER postgres WITH SUPERUSER PASSWORD 'postgres';
      CREATE DATABASE "spb-mfc" OWNER postgres;
    '';
  };

  # SSH
  services.openssh.enable = true;
  programs.ssh.startAgent = true;

  # Syncthing
  services.syncthing.enable = true;
}