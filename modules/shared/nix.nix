{inputs, ...}:
{
  nix = {
    settings = {
      experimental-features = [ "nix-command" "flakes" ];
      auto-optimise-store = true;

      trusted-users = [
        "@wheel" # allow sudo users to manage the nix store
        "root"
        "oneiroi"
      ];

      substituters = [
      "https://cache.nixos.org/" # official binary cache (yes the trailing slash is really neccacery)
      "https://nix-community.cachix.org" # nix-community cache
      "https://nixpkgs-unfree.cachix.org" # unfree-package cache
      "https://catppuccin.cachix.org" # a cache for ctp nix
      "https://hyprland.cachix.org" # hyprland
    ];

    trusted-public-keys = [
      "cache.nixos.org-1:6NCHdD59X431o0gWypbMrAURkbJ16ZPMQFGspcDShjY="
      "nix-community.cachix.org-1:mB9FSh9qf2dCimDSUo8Zy7bkq5CX+/rkCWyvRCYg3Fs="
      "nixpkgs-unfree.cachix.org-1:hqvoInulhbV4nJ9yJOEr+4wxhDV4xq2d1DK7S6Nj6rs="
      "catppuccin.cachix.org-1:noG/4HkbhJb+lUAdKrph6LaozJvAeEEZj4N732IysmU="
      "hyprland.cachix.org-1:a7pgxzMz7+chwVL3/pzj6jIBMioiJM7ypFP8PwtkuGc="
    ];
      
    };
    channel.enable = false;

    gc = {
      automatic = true;
      dates = "weekly";
      options = "--delete-older-than 7d";
    };

    #download-buffer-size = 134217728;

  };

  nixpkgs.config.allowUnfree = true;
  nixpkgs.overlays = [inputs.catppuccin-vsc.overlays.default];

  documentation.man.generateCaches = false;
}