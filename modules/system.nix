{ config, pkgs, ... }:

{
  networking.hostName = "nixos-btw";
  networking.networkmanager.enable = true;

  time.timeZone = "Asia/Kolkata";

  nixpkgs.config.allowUnfree = true;

  users.users.chimnayyyy = {
    isNormalUser = true;
    extraGroups = [ "wheel" "input" "docker" "vboxusers" "video" ];
    shell = pkgs.zsh;
  };
  
  boot.loader = {
    systemd-boot.enable = true;
    efi.canTouchEfiVariables = true;
  };

  programs.zsh.enable = true;

  services = {
    xserver = {
      enable = true;
      videoDrivers = [ "nvidia" ];
    };

    libinput.enable = true;

    pipewire = {
      enable = true;
      pulse.enable = true;
      alsa.enable = true;
      wireplumber.enable = true;
    };

    blueman.enable = true;
    avahi.enable = true;
    udisks2.enable = true;
    dbus.enable = true;
    gvfs.enable = true;
  };

  hardware = {
    bluetooth.enable = true;

    nvidia = {
      modesetting.enable = true;
      open = false;

      prime = {
        offload.enable = true;
        intelBusId = "PCI:0:2:0";
        nvidiaBusId = "PCI:1:0:0";
      };
    };
  };

  security.polkit.enable = true;

  networking.firewall.allowedTCPPorts = [ 8000 4321 3000 4173 ];

}
