{
  wayland.windowManager.hyprland.settings = {
    windowrule = [
      "float, bitwarden"
      "float, ^(rofi)$"
      "float, ^(pwvucontrol)$"
      "float, ^(nm-connection-editor)$"
      "float, ^(blueberry.py)$"
      "float, ^(Color Picker)$"
      "float, ^(Network)$"
      "float, ^(com.github.Aylur.ags)$"
      "float, ^(xdg-desktop-portal)$"
      "float, ^(xdg-desktop-portal-gnome)$"
      "float, ^(transmission-gtk)$"
      "size 800 600,class:Bitwarden"
    ];

    windowrulev2 = [
      "float, title:^(Picture-in-Picture)$"
      "float, class:^(Viewnior)$"
      "float, class:^(download)$"
      #"opacity 1 1 1, class:^(Starsector).*$"

      "workspace 4 silent, title:^(.*(Disc|WebC)ord.*)$"
      "workspace 5 silent, title:^(.*(c|C)ider.*)$"
      "workspace 6 silent, title:^(.*(s|S)team.*)$"
      "workspace 6 silent, title:^(.*(l|L)utris.*)$"

      # throw sharing indicators away
      "workspace special silent, title:^(Firefox — Sharing Indicator)$"
      "workspace special silent, title:^(.*is sharing (your screen|a window)\.)$"
    ];
  };
}