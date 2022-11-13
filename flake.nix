{
  description = "Fish support for the nix-shell environment of the Nix package manager";

  outputs = {nixpkgs, ...}: {
    fish-nix-shell = ./default.nix nixpkgs;
  };
}
