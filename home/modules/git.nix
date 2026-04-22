{ config, pkgs, ... }:

{
  programs.git = {
    enable = true;

    settings = {
      user.name = "chimnayajith";
      user.email = "chinmayajith30@gmail.com";
    };
  };
}