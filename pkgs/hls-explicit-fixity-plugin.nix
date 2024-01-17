{ mkDerivation, base, containers, deepseq, extra, filepath, ghc
, ghcide, hashable, hls-plugin-api, hls-test-utils, lib, lsp, text
, transformers
}:
mkDerivation {
  pname = "hls-explicit-fixity-plugin";
  version = "2.6.0.0";
  sha256 = "4ad92d86e212633ecfe0b520430d88e1793b551e51b706643475fbde9f05a902";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    base containers deepseq extra ghc ghcide hashable hls-plugin-api
    lsp text transformers
  ];
  testHaskellDepends = [ base filepath hls-test-utils text ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = true;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  description = "Show fixity explicitly while hovering";
  license = lib.licenses.asl20;
  broken = false;
}