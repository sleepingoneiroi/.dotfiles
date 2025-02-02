{...}:
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
    lfs.enable = true;
  };
  #programs.swaylock.enable = false;
  
  home.stateVersion = "24.05";
  programs.home-manager.enable = true;
  #programs.home-manager.backupFileExtension = "backup";

  home.sessionVariables = {
    XDG_CACHE_HOME  = "$HOME/.cache";
    XDG_CONFIG_HOME = "$HOME/.config";
    XDG_DATA_HOME   = "$HOME/.local/share";
    XDG_STATE_HOME  = "$HOME/.local/state";

    # Not officially in the specification
    XDG_BIN_HOME    = "$HOME/.local/bin";
  };
  xdg.mimeApps.enable = true; 

  systemd.user.targets.tray = {
      Unit = {
        Description = "Home Manager System Tray";
        Requires = [ "graphical-session-pre.target" ];
      };
    };
}