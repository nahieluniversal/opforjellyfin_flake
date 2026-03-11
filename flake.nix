{
  description = "OpforJellyfin is a CLI tool to automate the download and organization of One Pace episodes for Jellyfin.";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs";
  };

  outputs = { self, nixpkgs }: {
    packages = {
      x86_64-linux = {
        default = let
          pkgs = import nixpkgs {
            system = "x86_64-linux";
          };
        in pkgs.callPackage ./default.nix { };
      };
    };
  };
}