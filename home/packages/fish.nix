{
  programs.fish = {
    enable = true;
    shellAliases = {
      dots-rebuild = "sudo nixos-rebuild switch --flake ~/.dotfiles#doremy";
      dots-update = "sudo nixos-rebuild switch --upgrade --flake ~/.dotfiles#doremy";
    };
  };
}