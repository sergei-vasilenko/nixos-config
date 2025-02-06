{ config, pkgs, ... }:

{
  # Wi-Fi
  networking.wireless = {
    enable = true;
    networks = {
      "Matt Mayapur Online" = {
        psk = "77746986";
      };
    };
  };
}