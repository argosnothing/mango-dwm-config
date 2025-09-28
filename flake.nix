{
  description = "";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
  };

  outputs = {
    self,
    nixpkgs,
  }: let
    system = "x86_64-linux";
    pkgs = import nixpkgs {inherit system;};
  in {
    devShells.${system}.default = pkgs.mkShell {
        buildInputs = [
          pkgs.wmenu
          pkgs.waybar
        ];
      shellHook = ''
        export PS1="(oxwm-dev) $PS1"
        export HOME=$PWD
        export MANGOCONFIG=$PWD
      '';
    };
  };
}
