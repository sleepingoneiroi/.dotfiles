{pkgs, ...}:{
  home.packages = with pkgs;[
    #starsector
    lutris
    gamescope
    #wine64
    wineWowPackages.waylandFull
    #xivlauncher
  ];
}