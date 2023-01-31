{
  description = "EC2 metadata flake";

  inputs = {
    nixpkgs.url = "nixpkgs/nixos-22.11";
  };

  outputs = { self, nixpkgs }:
    let
      supportedSystems = [ "x86_64-linux" "aarch64-linux" ];
      forAllSystems = f: nixpkgs.lib.genAttrs supportedSystems (system: f system);
      overlay = self: super: { };
      pkgsForSystem = system: (import nixpkgs {
        inherit system;
        overlays = [
          self.overlays.default
        ];
      });
    in
    {
      overlays.default = final: prev: {
        ec2_metadata = final.buildGoPackage {
          src = ./.;
          goPackagePath = "github.com/utsl42/ec2_metadata";
          name = "ec2_metadata";
        };
      };
      packages = forAllSystems
        (system:
          let pkgs = pkgsForSystem system;
          in
          {
            ec2_metadata = pkgs.ec2_metadata;
            default = pkgs.ec2_metadata;
          });
      nixosModules.ec2-metadata = {
        imports = [ ./module.nix ];
        nixpkgs.overlays = [ self.overlays.default ];
      };
    };
}
