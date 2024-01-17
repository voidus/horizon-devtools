{ mkDerivation, lib }:
mkDerivation {
  pname = "hls-splice-plugin";
  version = "2.6.0.0";
  sha256 = "127f94918866741e3982d9492604f3d8c6c2a9f80aac2d8e015555db7a46dd01";
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
  description = "HLS Plugin to expand TemplateHaskell Splices and QuasiQuotes";
  license = lib.licenses.asl20;
  broken = false;
}