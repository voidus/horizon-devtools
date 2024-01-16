{ mkDerivation, base, bytestring, gnuplot, ihaskell, lib }:
mkDerivation {
  pname = "ihaskell-gnuplot";
  version = "0.1.0.1";
  sha256 = "66ce81b7e47c649207079e8049620173ade983d7bc8bd7ca2f0071513ce8ace1";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [ base bytestring gnuplot ihaskell ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = true;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "http://www.github.com/gibiansky/ihaskell";
  description = "IHaskell display instance for Gnuplot (from gnuplot package)";
  license = lib.licenses.mit;
  broken = false;
}