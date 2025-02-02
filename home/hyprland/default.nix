{
  imports = [
    ./programs #waybar, etc.
    ./config #hyprland config
    
  ];
  wayland.windowManager.hyprland = {
    enable = true;

    settings = {
      exec-once = [
        "hyprctl dispatch exec waybar"
        "swww-daemon"
        "swaync"
        "hyprctl dispatch exec mullvad-vpn"
        "hyprctl dispatch exec easyeffects --gapplication-service -l \"dt770 80ohm\""
        #"hyprlock"
        
        "swww img ./wallpapers/nixos-4k.png"
        
      ];
    };
  };
}