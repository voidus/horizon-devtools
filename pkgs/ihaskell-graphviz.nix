{ mkDerivation, base, bytestring, ihaskell, lib, process }:
mkDerivation {
  pname = "ihaskell-graphviz";
  version = "0.1.0.0";
  sha256 = "3eb8197679989a475459935508ef2f9b42078642eebd7af93e3697d3761a36d6";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [ base bytestring ihaskell process ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = true;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "http://www.github.com/gibiansky/ihaskell";
  description = "IHaskell display instance for GraphViz (external binary)";
  license = lib.licenses.mit;
  broken = false;
}