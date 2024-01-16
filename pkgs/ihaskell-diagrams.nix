{ mkDerivation, active, base, bytestring, diagrams, diagrams-cairo
, diagrams-lib, directory, filepath, ihaskell, lib, temporary, text
}:
mkDerivation {
  pname = "ihaskell-diagrams";
  version = "0.4.0.0";
  sha256 = "c2185268c25a79c73f54aeede6baaaa5a2375a5f39b110126a1b3f1ecd48a2e3";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    active base bytestring diagrams diagrams-cairo diagrams-lib
    directory filepath ihaskell temporary text
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = true;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "http://www.github.com/gibiansky/ihaskell";
  description = "IHaskell display instances for diagram types";
  license = lib.licenses.mit;
  broken = false;
}