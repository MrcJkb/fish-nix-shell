{
  description = "Fish support for the nix-shell environment of the Nix package manager";

  inputs.nixpkgs.url = "github:NixOS/nixpkgs";

  outputs = {nixpkgs, ...}: {
    fish-nix-shell = ./default.nix nixpkgs;
  };
}
