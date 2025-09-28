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
          pkgs.st
        ];
      shellHook = ''
        export PS1="(mango-dwm) $PS1"
        export GIT_CONFIG_GLOBAL="$HOME/.config/git/config"
        export XDG_CONFIG_HOME=$PWD
        export MANGOCONFIG=$PWD
        export HOME=$PWD #idk blame waybar
      '';
    };
  };
}
