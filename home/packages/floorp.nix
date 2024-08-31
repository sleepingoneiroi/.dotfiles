{pkgs, ...}:
{
  home.packages = with pkgs;[
    floorp
  ];
  home.sessionVariables.MOZ_ENABLE_WAYLAND = "1"; 
}