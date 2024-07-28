{pkgs, ...}:
{
  imports = [
    ./hardware-configuration.nix
    ../../modules/desktop #desktop config
    #../../modules/audio.nix #enable audio support
    # inputs.catppuccin.nixosModules.catppuccin
  ];

  boot.initrd.kernelModules = [ "amdgpu" ];
  services.xserver.videoDrivers = [ "modesetting" ];
  hardware.graphics = {
	# Mesa
	  enable = true;
  };
  nixpkgs.config.rocmSupport = true;


  
  
  networking.hostName = "doremy";

  programs.hyprland = {
    enable = true;
  };
  xdg.portal = {
    enable = true;
    wlr.enable = true;
    xdgOpenUsePortal = true;
    extraPortals = [
      pkgs.xdg-desktop-portal-hyprland
      pkgs.xdg-desktop-portal-gtk
    ];
  };


  programs.dconf.enable = true;

  #gamin
  programs.gamemode.enable = true;
  programs.steam = {
    enable = true;
    #remotePlay.openFirewall = true; # Open ports in the firewall for Steam Remote Play
    dedicatedServer.openFirewall = true; # Open ports in the firewall for Source Dedicated Server
    localNetworkGameTransfers.openFirewall = true; # Open ports in the firewall for Steam Local Network Game Transfers
  };

  # services.greetd = {
  #     enable = true;
  #     settings.default_session.command = pkgs.writeShellScript "greeter" ''
  #       export XKB_DEFAULT_LAYOUT=${config.services.xserver.xkb.layout}
  #       export XCURSOR_THEME=Qogir
  #       ${x}/bin/greeter
  #     '';
  #   };

  catppuccin = {
    enable = true;
    flavor = "mocha";
    accent = "lavender";
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

  # services.displayManager.autoLogin = {
  #   enable = true;
  #   user = "oneiroi";
  # };
}