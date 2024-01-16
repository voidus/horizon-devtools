{ mkDerivation, base, file, lib }:
mkDerivation {
  pname = "magic";
  version = "1.1";
  sha256 = "b21c3b69f57b64199c1d7be0ac8ea1d02d698be59943058f6a2d642ea57ce082";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [ base ];
  librarySystemDepends = [ file ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = true;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  description = "Interface to C file/magic library";
  license = lib.licenses.bsd3;
  broken = false;
}