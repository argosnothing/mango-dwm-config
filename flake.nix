{
  description = "";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    mango.url = "github:DreamMaoMao/mango";
  };

  outputs = {nixpkgs, ...} @ inputs: let
    system = "x86_64-linux";
    pkgs = import nixpkgs {inherit system;};
  in {
    devShells.${system}.default = pkgs.mkShell {
      buildInputs = [
        pkgs.wmenu
        pkgs.waybar
        pkgs.st
      ];
      packages = [
        inputs.mango.packages.${system}.mango
      ];
      shellHook = ''
        export PS1="(mango-dwm) $PS1"
        export OLDHOME=$HOME
        export GIT_CONFIG_GLOBAL="$OLDHOME/.config/git/config"
        export XDG_CONFIG_HOME=$PWD
        export MANGOCONFIG=$PWD
        export HOME=$PWD #idk blame waybar
      '';
    };
  };
}
