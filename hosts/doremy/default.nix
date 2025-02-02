{pkgs, ...}:
{
  imports = [
    ./hardware-configuration.nix
    ../../modules/desktop #desktop config
    #../../modules/audio.nix #enable audio support
    # inputs.catppuccin.nixosModules.catppuccin
    
  ];

  networking.hostName = "doremy";

  hardware.cpu.amd.updateMicrocode = true;
  boot = {
    initrd.kernelModules = [ "amdgpu" ];
    kernelModules = [ 
      "kvm-amd" 
      "amd-pstate"
    ];
    kernelParams = [ 
      "amd-pstate=active"
    ];

  };
  services.xserver.videoDrivers = [ "modesetting" ];

  hardware.graphics = {
	# Mesa
	  enable = true;
    enable32Bit = true;
    # extraPackages = with pkgs; [
    #   rocmPackages.clr
    # ];
  };

  powerManagement.cpuFreqGovernor = "performance";

  #nixpkgs.config.rocmSupport = true;
  services.flatpak.enable = true;
  
  programs.dconf.enable = true;

  # services.greetd = {
  #     enable = true;
  #     settings.default_session.command = pkgs.writeShellScript "greeter" ''
  #       export XKB_DEFAULT_LAYOUT=${config.services.xserver.xkb.layout}
  #       export XCURSOR_THEME=Qogir
  #       ${x}/bin/greeter
  #     '';
  #   };

  programs.fish.enable = true;
  programs.thunar.enable = true;
  users.users.oneiroi.shell = pkgs.fish;

  # services.displayManager.sddm = {
  #   enable = true;
  #   # autoLogin.enable = true;
  #   # autoLogin.user = "oneiroi";
  #   package = pkgs.kdePackages.sddm;
  #   wayland.enable = true;
  # };
  
  services.displayManager.ly = {
    enable = true;
  };

  #services.displayManager.autoLogin = {
  #  enable = true;
  #  user = "oneiroi";
  #};
}
