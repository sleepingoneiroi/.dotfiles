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
      ];
      extraConfig = "makestep 1 -1";
    };
  };
}