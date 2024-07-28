{pkgs, ...}:
{
  home.packages = with pkgs;[easyeffects];
  services.easyeffects = {
    enable = true;
    preset = "dt770 80ohm";
  };
}