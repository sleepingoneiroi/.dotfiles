{pkgs, ...}:{
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
    #jre8
    #xivlauncher
  ];
}