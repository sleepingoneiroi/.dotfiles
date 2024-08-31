{
  programs.fish = {
    enable = true;
    catppuccin ={
      enable = true;
      flavor = "mocha";
    };
    shellAliases = {
      dots-rebuild = "sudo nixos-rebuild switch --flake ~/.dotfiles#doremy";
      dots-update = "sudo nix flake update ~/.dotfiles";
    };
  };
}