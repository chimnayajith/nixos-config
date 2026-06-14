{ pkgs, ... }:

{
  virtualisation.docker.enable = true;
  
  virtualisation.virtualbox = {
    host.enable = true;
    guest.enable = true;
    guest.dragAndDrop = true;
    host.enableHardening = false;
  };

  programs.nix-ld.enable = true;
  
  environment.systemPackages = with pkgs; [
    gcc
    nodejs
    python311
    ghc
    jdk17
  ];
}
