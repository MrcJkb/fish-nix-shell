{
  description = "Fish support for the nix-shell environment of the Nix package manager";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs";
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs = { self, nixpkgs, flake-utils }:
    flake-utils.lib.eachSystem flake-utils.lib.allSystems (system: {
      packages.fish-nix-shell = nixpkgs.legacyPackages.${system}.callPackage ./. {};
      defaultPackage = self.packages.${system}.fish-nix-shell;
    });
}
