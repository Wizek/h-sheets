{ reflex-platform ? import ./nix/reflex-platform.nix } :
let

  haskellPackages = reflex-platform.ghc.override {
    overrides = self: super: {
      # Comment below to disable haddocks generation
      # ghc = super.ghc // { withPackages = super.ghc.withHoogle; };
      # ghc = super.ghc; # // { withPackages = super.ghc.withHoogle; };
      # ghc = super.ghc; # // { withPackages = super.ghc.withHoogle; };
      # ghcWithPackages = self.ghc.withPackages;
    };
  };

  # reflex-basic-host = haskellPackages.callPackage ./reflex-basic-host.nix {};
  h-sheets = haskellPackages.callCabal2nix "h-sheets" ./. {};

in
  h-sheets
