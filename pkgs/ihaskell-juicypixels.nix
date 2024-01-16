{ mkDerivation, JuicyPixels, base, bytestring, directory, ihaskell
, lib
}:
mkDerivation {
  pname = "ihaskell-juicypixels";
  version = "1.1.0.1";
  sha256 = "dafcf38045345450fe50f5a956e8f305e2b75a23c7989a62a6599c72047e56ba";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    base bytestring directory ihaskell JuicyPixels
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = true;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "http://www.github.com/gibiansky/ihaskell";
  description = "IHaskell - IHaskellDisplay instances of the image types of the JuicyPixels package";
  license = lib.licenses.mit;
  broken = false;
}