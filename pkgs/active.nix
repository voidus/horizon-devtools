{ mkDerivation, QuickCheck, base, lens, lib, linear, semigroupoids
, semigroups, vector
}:
mkDerivation {
  pname = "active";
  version = "0.2.1";
  sha256 = "615758872a6d65546e27ddc0164822b56fd030ad00459c82c0492a3372e41394";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    base lens linear semigroupoids semigroups vector
  ];
  testHaskellDepends = [ base linear QuickCheck semigroups ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = true;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  description = "Abstractions for animation";
  license = lib.licenses.bsd3;
  broken = false;
}