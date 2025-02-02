{
  time.timeZone = "America/Chicago";
  time.hardwareClockInLocalTime = true;
  services = {
    chrony = {
      enable = true;
      initstepslew.enabled = true;
      enableNTS = true;
      servers = [
        "time.cloudflare.com"
        "ntp.time.nl"
      ];
      extraConfig = "makestep 1 -1";
    };
  };
}