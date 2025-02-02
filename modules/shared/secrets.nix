{pkgs, ...}:
{
  # services.dbus.packages = with pkgs; [
  #   pass-secret-service
  # ];
  environment.systemPackages = with pkgs; [
    pass-wayland
    # pass-secret-service
    #libsecret
  ];

  programs.gnupg.agent = {
    enable = true;
    pinentryPackage = pkgs.pinentry-curses;
  };
  services.passSecretService = {
    enable = true;
    package = pkgs.libsecret;
  };
}