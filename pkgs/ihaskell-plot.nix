{ mkDerivation, base, bytestring, hmatrix, ihaskell, lib, plot }:
mkDerivation {
  pname = "ihaskell-plot";
  version = "0.3.0.1";
  sha256 = "7e543ab91ae5b602ad8127296d7d0f8cc829291c761ad180af3321526a447189";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [ base bytestring hmatrix ihaskell plot ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = true;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "http://www.github.com/gibiansky/ihaskell";
  description = "IHaskell display instance for Plot (from plot package)";
  license = lib.licenses.mit;
  broken = false;
}