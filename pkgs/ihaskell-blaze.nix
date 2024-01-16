{ mkDerivation, base, blaze-html, blaze-markup, ihaskell, lib }:
mkDerivation {
  pname = "ihaskell-blaze";
  version = "0.3.0.1";
  sha256 = "07a7dd57151d9a3e374a6e37b54a52e239be76eeabbf444449f68e3dc2a3639c";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [ base blaze-html blaze-markup ihaskell ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = true;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "http://www.github.com/gibiansky/ihaskell";
  description = "IHaskell display instances for blaze-html types";
  license = lib.licenses.mit;
  broken = false;
}