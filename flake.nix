{
  inputs = {
    flake-utils.url = "github:numtide/flake-utils";
    nixpkgs.url = "github:nix-ocaml/nix-overlays";
  };
  outputs = { self, flake-utils, nixpkgs }@inputs:
    let 
      pkgs = nixpkgs.legacyPackages.${"x86_64-linux"};
    in
	    pkgs.mkShell {
		  packages = [pkgs.lwt];
      };
}
