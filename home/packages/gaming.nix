{pkgs, ...}:
{
  home.packages = with pkgs;[
    #starsector
    lutris
    #gamescope
    #wine64
    wine
    winetricks
    protontricks
    wine-staging
    #wineWowPackages.waylandFull
    #proton-ge-bin
    protonup-qt
    prismlauncher
    glfw-wayland-minecraft
    umu-launcher
    #jre8
    #xivlauncher
    
  ];

  
}