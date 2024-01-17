{ mkDerivation, HUnit, base, lib, monoid-subclasses }:
mkDerivation {
  pname = "fuzzy";
  version = "0.1.1.0";
  sha256 = "3b0396f1549155431b3db656d2285f8bc4c6a5faa6b3d9f3ea7fbd5757fb8665";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [ base monoid-subclasses ];
  testHaskellDepends = [ base HUnit ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = true;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "http://github.com/joom/fuzzy";
  description = "Filters a list based on a fuzzy string search";
  license = lib.licenses.mit;
  broken = false;
}