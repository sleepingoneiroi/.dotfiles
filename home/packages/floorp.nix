{pkgs, ...}:
{
  home.packages = with pkgs;[
    floorp
  ];
  home.sessionVariables = {
    MOZ_ENABLE_WAYLAND = "1"; 
    DEFAULT_BROWSER = "${pkgs.floorp}/bin/floorp";
    BROWSER = "${pkgs.floorp}/bin/floorp";
  };

  xdg.mimeApps = {
    enable = true;
    defaultApplications = {
      "text/html" = "floorp.desktop";
      "x-scheme-handler/http" = "floorp.desktop";
      "x-scheme-handler/https" = "floorp.desktop";
      "x-scheme-handler/about" = "floorp.desktop";
      "x-scheme-handler/unknown" = "floorp.desktop";
    };
  };
}