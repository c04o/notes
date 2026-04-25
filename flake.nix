{
  description = "typst env";

  inputs = {
    # Nix Packages collection & NixOS
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
  };

  outputs = {
    self,
    nixpkgs,
  }: let
    supportedSystems = [
      "x86_64-linux"
      "aarch64-linux"
    ];
    forAllSystems = nixpkgs.lib.genAttrs supportedSystems;
    pkgs = forAllSystems (
      system: nixpkgs.legacyPackages.${system}
    );
  in {
    devShells = forAllSystems (system: {
      default = pkgs.${system}.mkShell {
        packages = with pkgs.${system}; [
          # New markup-based typesetting system that is powerful and easy to learn
          typst

          # Integrated language service for Typst
          tinymist

          # Format your typst source code
          typstyle
        ];

        shellHook = ''
          echo "Typst shell successfully loaded!"
          echo "Run 'typst watch index.typ' to compile in real time"
          echo "Run 'typstyle format index.typ' to format source code"
        '';
      };
    });
  };
}
