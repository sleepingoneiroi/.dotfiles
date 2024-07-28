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
      "1.1.1.1"
      "1.0.0.1"
      "9.9.9.9"
    ];

    enableIPv6 = true;
  };

  services.mullvad-vpn.enable = true;
}