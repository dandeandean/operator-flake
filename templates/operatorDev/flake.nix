{
  description = "Kubernetes Operator Development Environment";
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    flake-utils.url = "github:numtide/flake-utils";
  };
  outputs =
    {
      self,
      nixpkgs,
      flake-utils,
    }:
    flake-utils.lib.eachDefaultSystem (
      system:
      let
        pkgs = import nixpkgs { inherit system; };
      in
      {
        devShells.default = pkgs.mkShell {
          buildInputs = with pkgs; [
            kubebuilder
            operator-sdk

            # Development Dependencies
            go
            gopls
            kubernetes-controller-tools
            kustomize
            golangci-lint

            # Useful Utilities
            kubectl
            podman
            docker
          ];

          shellHook = ''
            export PATH=$PATH:$(go env GOPATH)/bin
          '';
        };
      }
    );
}
