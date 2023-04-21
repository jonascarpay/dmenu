{
  inputs.nixpkgs.url = "github:NixOS/nixpkgs/release-22.11";
  inputs.flake-utils.url = "github:numtide/flake-utils";

  outputs = inputs: inputs.flake-utils.lib.eachDefaultSystem (system:
    let
      pkgs = import inputs.nixpkgs { inherit system; };
    in
    {
      defaultPackage = pkgs.callPackage ./package.nix { };
    });
}
