# {pkgs, ...}:
# {
#   environment.systemPackages = with pkgs; [
#     pass
#     pinentry
#   ];

#   programs.gnupg.agent = {
#     enable = true;
#     pinentryPackage = pkgs.pinentry-gtk2;
#   };

#   services.passSecretService.enable = true;
# }
{pkgs, ...}:
{
  services.dbus.packages = with pkgs; [
    pass-secret-service
  ];
  environment.systemPackages = with pkgs; [
    pass-wayland
    pass-secret-service
    libsecret
  ];

  programs.gnupg.agent = {
    enable = true;
    pinentryPackage = pkgs.pinentry-curses;
  };
  services.passSecretService.enable = true;
}