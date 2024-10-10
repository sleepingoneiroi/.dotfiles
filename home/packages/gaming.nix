{pkgs, ...}:{
  home.packages = with pkgs;[
    #starsector
    lutris
    gamescope
    #wine64
    #wineWowPackages.waylandFull
    #proton-ge-bin
    protonup-qt
    prismlauncher-unwrapped
    #xivlauncher
  ];
}