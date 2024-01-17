{ mkDerivation, QuickCheck, base, containers, filepath, ghcide
, hls-plugin-api, hls-test-utils, lib, lsp, lsp-types, regex-tdfa
, syb, text, transformers, unordered-containers
}:
mkDerivation {
  pname = "hls-change-type-signature-plugin";
  version = "2.6.0.0";
  sha256 = "204fe3c720f59fb0316c26296b0a2054c96b29b038b71fb05dc31b710eb979e1";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    base containers ghcide hls-plugin-api lsp-types regex-tdfa syb text
    transformers unordered-containers
  ];
  testHaskellDepends = [
    base filepath hls-test-utils lsp QuickCheck regex-tdfa text
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = true;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  description = "Change a declarations type signature with a Code Action";
  license = lib.licenses.asl20;
  broken = false;
}