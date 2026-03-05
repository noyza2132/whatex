{
  description = "A very basic flake";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-25.11";
  };

  outputs = { self, nixpkgs }:
  let
    pkgs = nixpkgs.legacyPackages.x86_64-linux;
  in
  {

    packages.x86_64-linux.default = pkgs.hello;

    
    devShells.x86_64-linux.default = pkgs.mkShell {
      packages = [
        pkgs.miktex
        pkgs.imagemagickBig
      ];
    };
  };
}