{pkgs, ...}:
{
  imports = [
    ./hardware-configuration.nix
    ../../modules/laptop #laptop config
    #../../modules/audio.nix #enable audio support
    # inputs.catppuccin.nixosModules.catppuccin
  ];

  networking.hostName = "sagume";

  hardware ={
    cpu.intel.updateMicrocode = true;
    enableAllFirmware = true;
  };

  # programs.hyprland = {
  #   enable = true;
  # };
  # xdg.portal = {
  #   enable = true;
  #   wlr.enable = true;
  #   xdgOpenUsePortal = true;
  #   extraPortals = [
  #     pkgs.xdg-desktop-portal-hyprland
  #   ];
  # };

  #JANK!
  systemd.services.NetworkManager-wait-online.enable = false;
  systemd.network.wait-online.enable = false;
  systemd.network.wait-online.timeout = 0;
  systemd.network.wait-online.anyInterface = true;
  systemd.services.systemd-udevd.restartIfChanged = false;
  
  programs.dconf.enable = true;

  networking.networkmanager.enable = true;

  catppuccin = {
    enable = true;
    flavor = "mocha";
    accent = "lavender";
  };

  swapDevices = {
    device = "/var/lib/swapfile";
    size = 16*1024;
  };

  programs.fish.enable = true;
  users.users.oneiroi.shell = pkgs.fish;

  services.displayManager.sddm = {
    enable = true;
    autoLogin.enable = true;
    autoLogin.user = "oneiroi";
    package = pkgs.kdePackages.sddm;
    wayland.enable = true;
  };
}
