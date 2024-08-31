{inputs, pkgs, ...}:
let
  nixvim = inputs.nixvim;
  neve = inputs.neve;
in
{
  imports = [
    nixvim.homeManagerModules.nixvim
  ];

  programs.nixvim = {
    enable = false;
    colorschemes.catppuccin = {
      enable = true;
    };
    clipboard.providers.wl-copy.enable = true;
  };

  home.packages = with pkgs; [
    neve.packages.${system}.default
  ];

}