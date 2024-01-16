{ mkDerivation, lib }:
mkDerivation {
  pname = "hls-retrie-plugin";
  version = "2.6.0.0";
  sha256 = "f08fddb837cc7e6c1f4578d8c7e22d698253c2cdaa31268c1e8776990e269485";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = true;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  description = "Retrie integration plugin for Haskell Language Server";
  license = lib.licenses.asl20;
  broken = false;
}