{pkgs, ...}:
{
  imports = [
    ./hardware-configuration.nix
    ../../modules/laptop #laptop config
    #../../modules/audio.nix #enable audio support
    # inputs.catppuccin.nixosModules.catppuccin
  ];

  networking.hostName = "sagume";

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
}
