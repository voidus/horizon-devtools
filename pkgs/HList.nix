{ mkDerivation, QuickCheck, array, base, base-orphans, cmdargs
, directory, filepath, ghc-prim, hspec, hspec-expectations, lens
, lib, mtl, process, profunctors, semigroups, syb, tagged
, template-haskell
}:
mkDerivation {
  pname = "HList";
  version = "0.5.3.0";
  sha256 = "c489a61036bf55261f3657a904e331ef1412d1d64a0db91a258e4ae1a762fc2b";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = true;
  libraryHaskellDepends = [
    array base base-orphans ghc-prim mtl profunctors semigroups tagged
    template-haskell
  ];
  testHaskellDepends = [
    array base cmdargs directory filepath hspec hspec-expectations lens
    mtl process QuickCheck semigroups syb template-haskell
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = true;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  description = "Heterogeneous lists";
  license = lib.licenses.mit;
  broken = false;
}