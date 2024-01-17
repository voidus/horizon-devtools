{ mkDerivation, lib }:
mkDerivation {
  pname = "hls-hlint-plugin";
  version = "2.6.0.0";
  sha256 = "8cfbdd1d74157cc0f9ec1ae9f9121d4f5467e991888f6620f771608b2e4fa847";
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
  description = "Hlint integration plugin with Haskell Language Server";
  license = lib.licenses.asl20;
  broken = false;
}