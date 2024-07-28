{inputs, pkgs, ...}:
let 
  nix-colors = inputs.nix-colors;
  catppuccin = inputs.catppuccin;
in
{

  imports = [
    nix-colors.homeManagerModules.default
    catppuccin.homeManagerModules.catppuccin
  ];

  config = {
    catppuccin = {
      enable = true;
      flavor = "mocha";
      accent = "lavender";

      # pointerCursor = {
      #   enable = true;
      #   accent = "dark";
      # };
    };

    colorScheme = nix-colors.colorSchemes.catppuccin-mocha;
    

    # pointer / cursor theming
    home.pointerCursor = {
      name = "catppuccin-mocha-lavender-cursors"; 
      size = 16;
      gtk.enable = true;
      # this adds extra deps, so lets only enable it on wayland
      x11.enable = true;
      package = pkgs.catppuccin-cursors.mochaLavender; 
    };
  };
}
