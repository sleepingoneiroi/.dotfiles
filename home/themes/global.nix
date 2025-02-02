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
    
    # stylix = {
    #   enable = true;
    #   base16Scheme = "${pkgs.base16-schemes}/share/themes/catppuccin-mocha.yaml";
    # };

    # pointer / cursor theming
    home.pointerCursor = {
      package = pkgs.catppuccin-cursors.mochaLavender; 
      name = "catppuccin-mocha-lavender-cursors"; 
      size = 16;

      gtk.enable = true;

      x11 = {
        enable = true;
        defaultCursor = "catppuccin-mocha-lavender-cursors";
      };
      
      hyprcursor = {
        enable = true;
        size = 16;
      };
    };
  };
}
