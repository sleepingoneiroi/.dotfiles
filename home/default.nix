{pkgs, ...}:
{
  imports = [
    #WM
    ./hyprland

    ./themes

    ./packages
  ];
  home.username = "oneiroi";
  home.homeDirectory = "/home/oneiroi";

  fonts.fontconfig.enable = true;
  
  programs.git = {
    enable = true;
    userName  = "sleepingoneiroi";
    userEmail = "sleepingoneiroi@proton.me";
  };
  #programs.swaylock.enable = false;
  
  home.stateVersion = "24.05";
  programs.home-manager.enable = true;
  #programs.home-manager.backupFileExtension = "backup";

  systemd.user.targets.tray = {
      Unit = {
        Description = "Home Manager System Tray";
        Requires = [ "graphical-session-pre.target" ];
      };
    };
}