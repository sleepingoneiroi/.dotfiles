{inputs, pkgs, ...}:
{
  environment.systemPackages = with pkgs; [
    spice
    spice-gtk
    spice-protocol
    virtio-win
    win-spice
  ];
  #nixpkgs.overlays = [proxmox-nixos.overlays.x86_64-linux];
  #services.proxmox-ve.enable = true;
  programs.virt-manager.enable = true;
  virtualisation.libvirtd = {
    enable = true;
    qemu = {
      swtpm.enable = true;
      ovmf.enable = true;
      ovmf.packages = [pkgs.OVMFFull.fd];
    };
  };
  services.spice-vdagentd.enable = true;
}