{inputs, pkgs, ...}:
{
  # environment.systemPackages = with pkgs; [
  #   spice
  #   spice-gtk
  #   spice-protocol
  #   virtio-win
  #   win-spice
  # ];
  #nixpkgs.overlays = [proxmox-nixos.overlays.x86_64-linux];
  #services.proxmox-ve.enable = true;
  programs.virt-manager.enable = true;
  # virtualisation = {
  #   waydroid.enable = false;
  #   #lxd.enable = true;

  #   libvirtd = {
  #     enable = true;
  #     qemu = {
  #       swtpm.enable = true;
  #       ovmf.enable = true;
  #       ovmf.packages = [pkgs.OVMFFull.fd];
  #     };
  #   };
  # };
  # services.spice-vdagentd.enable = true;

  # networking.nat = {
  #   enable = true;
  #   internalInterfaces = [ "waydroid0" ];
  #   externalInterface = "enp6s0";
  #   # internalIPs = [ "192.168.240.0/24" ];
  #   # externalIP = "192.168.1.1";
  #   forwardPorts = [
  #     {
  #     sourcePort = 80;
  #     proto = "tcp";
  #     destination = "192.168.240.1:80";
  #     }
  #     # {
  #     #   sourcePort = 53;
  #     #   proto = "udp";
  #     #   destination = "192.168.1.1:53";
  #     # }
  #     # {
  #     #   sourcePort = 67;
  #     #   proto = "udp";
  #     #   destination = "192.168.1.1:67";
  #     # }
  #   ];
  # };

  # networking.firewall = {
  #   allowedUDPPorts = [ 53 67 ];
  # };

}