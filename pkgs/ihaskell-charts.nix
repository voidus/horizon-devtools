{ mkDerivation, Chart, Chart-cairo, base, bytestring
, data-default-class, directory, ihaskell, lib
}:
mkDerivation {
  pname = "ihaskell-charts";
  version = "0.3.0.1";
  sha256 = "654c1d450fd98f4448be938a0a2fb20a94492467f27522946310d07e03edf2d4";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    base bytestring Chart Chart-cairo data-default-class directory
    ihaskell
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = true;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "http://www.github.com/gibiansky/ihaskell";
  description = "IHaskell display instances for charts types";
  license = lib.licenses.mit;
  broken = false;
}