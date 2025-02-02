{pkgs, ...}:
# let
#   inherit (pkgs.stdenv.hostPlatform) system;
#   umu = inputs.umu.packages.${system}.umu.override {
#     version = inputs.umu.shortRev;
#     truststore = true;
#     cbor2 = true;
#   };
# in
{
  programs.gamemode.enable = true;
  programs.steam = {
    enable = true;
    #remotePlay.openFirewall = true; # Open ports in the firewall for Steam Remote Play
    dedicatedServer.openFirewall = true; # Open ports in the firewall for Source Dedicated Server
    localNetworkGameTransfers.openFirewall = true; # Open ports in the firewall for Steam Local Network Game Transfers
    package = pkgs.steam.override {
      extraPkgs = pkgs: with pkgs; [
        libkrb5
        keyutils
      ];
    };
  };
  # environment.systemPackages = [umu];
}