{...}:
{
  imports = [
    ./users.nix # define users
    ./bootloader.nix # enable systemd-boot
    ./system.nix # loc, etc.
    ./time.nix # chrony
    ./nix.nix # nix config
    ./networking.nix #networking, vpn
    #./runner.nix
    ./secrets.nix
    ./security.nix
  ];
}