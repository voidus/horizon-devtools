{ mkDerivation, lib }:
mkDerivation {
  pname = "hls-gadt-plugin";
  version = "2.6.0.0";
  sha256 = "2f3ff2a0da88bdc6e36b7201a13639c46c3e6b8f515c3b0464431301aa004629";
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
  description = "Convert to GADT syntax plugin";
  license = lib.licenses.asl20;
  broken = false;
}