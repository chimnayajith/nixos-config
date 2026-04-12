{ pkgs, ... }:

{
  services.xserver.windowManager.i3.enable = true;

  programs.i3lock = {
    enable = true;
    package = pkgs.i3lock-color;
  };
}
