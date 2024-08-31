{
  wayland.windowManager.hyprland.settings.general = {
    layout = "master";

    gaps_in = 8;
    gaps_out = 8;
    gaps_workspaces = 0;
    border_size = 2;
    no_border_on_floating = true;

    "col.active_border" = "$lavender";
    "col.inactive_border" = "$surface1";
  };

  wayland.windowManager.hyprland.settings.xwayland = {
    force_zero_scaling = true;
  };

  wayland.windowManager.hyprland.settings.monitor = [
    ", highrr, auto, 1"
  ];
}