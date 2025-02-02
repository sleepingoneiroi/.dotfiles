{pkgs, ...}:
{
  networking = {
    # generate a host ID by hashing the hostname
    #hostId = builtins.substring 0 8 (builtins.hashString "md5" (builtins.getEnv "HOSTNAME"));

    # global dhcp has been deprecated upstream, so we use networkd instead
    # however individual interfaces are still managed through dhcp in hardware configurations
    #useDHCP = false;
    useNetworkd = true;

    # interfaces are assigned names that contain topology information (e.g. wlp3s0) and thus should be consistent across reboots
    # this already defaults to true, we set it in case it changes upstream
    usePredictableInterfaceNames = true;

    # dns
    # should be using mullvad anyways :)
    nameservers = [
      "1.1.1.2"
      "1.0.0.2"
     # "9.9.9.9"
    ];

    enableIPv6 = true;
    

    firewall = {
      allowedUDPPorts = [9994 9993];
      # extraCommands = ''
      #   iptables -A INPUT -i enp6s0 -s 192.168.1.0/24 -j DROP
      # '';
    };
  };

  services.mullvad-vpn = {
    enable = true;
    package = pkgs.mullvad-vpn;
  };

  # services.zerotierone = {
  #   enable = true;
  #   joinNetworks = [
  #     "e3918db4838c338b"
  #   ];
  #   port = 9994;
  # };
}