{ config, pkgs, ... }:

{
  # Git
  programs.git = {
    enable = true;
    config = {
      user = {
        name = "Sergei V";
        email = "shsrdas@gmail.com";
      };
      core = {
        editor = "gedit";
      };
    };
  };

  programs.zsh = {
    enable = true;
    oh-my-zsh.enable = true;
  };
}
