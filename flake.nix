{
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";

    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    catppuccin.url = "github:catppuccin/nix";

    nix-colors.url = "github:misterio77/nix-colors";

    matugen.url = "github:InioX/matugen?ref=v2.2.0";

    catppuccin-vsc.url = "https://flakehub.com/f/catppuccin/vscode/*.tar.gz";
  };

  outputs = {self, nixpkgs, home-manager, catppuccin, nix-colors, catppuccin-vsc, ...} @inputs: {
    nixosConfigurations = {
      
      doremy = nixpkgs.lib.nixosSystem{
        system = "x86_64-linux";
        
        specialArgs = { 
          inherit inputs;
        };
        modules = [
          ./hosts/doremy

          home-manager.nixosModules.home-manager
          {
            home-manager = {
              useGlobalPkgs = true;
              users.oneiroi = import ./home;
              extraSpecialArgs = {inherit inputs;};
            };
          }
          catppuccin.nixosModules.catppuccin
        ];
      };
    };
  };
}