{ mkDerivation, lib }:
mkDerivation {
  pname = "hls-refactor-plugin";
  version = "2.6.0.0";
  sha256 = "4e7ea7559f10c1f1f4b03b530bf338cf2cac2923d6a09ff4130359bc073b1e53";
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
  description = "Exactprint refactorings for Haskell Language Server";
  license = lib.licenses.asl20;
  broken = false;
}