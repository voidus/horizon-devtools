{ mkDerivation, aeson, base, containers, filepath, fourmolu, ghc
, ghc-boot-th, ghcide, hls-plugin-api, hls-test-utils, lens, lib
, lsp, lsp-test, mtl, process-extras, text, transformers
}:
mkDerivation {
  pname = "hls-fourmolu-plugin";
  version = "2.6.0.0";
  sha256 = "967f01d9dfa1e98e411197f1d790075c0a9133f3a4dc4cc4e9a4ab7d5c25f5bc";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    base filepath fourmolu ghc ghc-boot-th ghcide hls-plugin-api lens
    lsp mtl process-extras text transformers
  ];
  testHaskellDepends = [
    aeson base containers filepath hls-plugin-api hls-test-utils
    lsp-test
  ];
  testToolDepends = [ fourmolu ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = true;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/haskell/haskell-language-server";
  description = "Integration with the Fourmolu code formatter";
  license = lib.licenses.asl20;
  broken = false;
}