{pkgs, ...}:
{
  boot = {
    loader = {
      efi.canTouchEfiVariables = true;
      # systemd-boot = {
      #   enable = true;
      # };
      grub = {
        enable = true;
        efiSupport = true;
        devices = [ "nodev" ];
        useOSProber = true;
        #version = 2;
      };
      
    };
    kernelPackages = pkgs.linuxPackages_latest;
  };
}