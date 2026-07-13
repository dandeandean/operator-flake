{
  description = "Kubernetes Operator Development Environment";
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
  };
  outputs = { self, ... }: {
    templates = {
      operatorDev = {
        description = "A template for operator development.";
        path = ./templates/operatorDev;
      };
    };
    defaultTemplate = self.templates.trivial;
  };
}
