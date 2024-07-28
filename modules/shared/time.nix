{
  time.timeZone = "America/Chicago";

  services = {
    chrony = {
      enable = true;
      enableNTS = true;
      servers = [
        "time.google.com"
        "time.nist.gov"
      ];
    };
  };
}