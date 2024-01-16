{ mkDerivation, base, lib }:
mkDerivation {
  pname = "xformat";
  version = "0.1.2.1";
  sha256 = "fdfc9b582ac87175b99bad44200fd6a24fe78f19df8496cb5ef76ee738a85ce0";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [ base ];
  testHaskellDepends = [ base ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = true;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "http://github.com/spl/xformat";
  description = "Extensible, type-safe formatting with scanf- and printf-like functions";
  license = lib.licenses.bsd3;
  broken = false;
}