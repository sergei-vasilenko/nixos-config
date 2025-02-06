{ config, pkgs, ... }:

{
  # Git
  programs.git = {
    enable = true;
    userName = "Sergei Vasilenko";
    userEmail = "shsrdas@gmail.com";
    alias = {
      co = "checkout";
      br = "branch";
      ci = "commit";
      st = "status";
      hist = "log --oneline --graph --decorate";
      unstage = "reset HEAD --";
      amend = "commit --amend";
    };
  };

  # SSH
  programs.ssh = {
    knownHosts = {
      github = {
        hostNames = [ "github.com" ];
        publicKey = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQCbB85qRy8TWoF5vd6FEiURXk/GYamrdNBv4/cyrdW9ULGwVHIiHNumzut/LBqPPgerF3zXm6NgzmwhchELBwaPhqnLQl99OzdjRUl4TZ9Z+EP61ziu9Dqx/3CFy/votEZ6/lw28182zrdz9JZkMsPeIvvsO0uOAGDJ9vIXNWb337sWiWT5SAEkAwoVHhRUI9dwRLHV899PrWZjsLGAL/ByQJXMiVX83elC8vCwAJwmWdblTOEKk0GLlhzeMAu9u5BvCKQYZPVsgMcDaWI/84buSNjKIp3HCTGpCN11Z7kOgn1rWpPRrfk2TDeYK2ljJiAqntFJFGi9V/R64rU7SxmOQCxvR3fUSxECSLthgqqwqceiV7W2mhuOSk5RXPdZIQLIx4/cmYvJD6vz+9qjrQ1Ipxk2J/uCQeBkFqcDxuNOq3GyDz5t3uYeRCOOGpLlStd1WUVIH31iI+wCs5vSRMny29SJLYGhT/ISfmCaa8g5zbsv+/optT5HYqN4BGabHoCbvyJWcfi8GYKione+Iwoyc5Ov1LZHKDHWXRWHPDRbiTIScIniPuWhdoxx1/Qj6bo8yjDiQWq5uds5N5P/4Nss8S3GCcsxHUA910jPRZO+aASECzkQHenrGbMle7PrJ28lxDICqFR9KkP4uz9E9a6iZ802jREGLHP/QqIH3bmpjw== shsrdas@gmail.com";
      };
    };
  };
}