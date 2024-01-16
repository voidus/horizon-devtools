{ mkDerivation, Diff, aeson, base, co-log-core, containers
, criterion, data-default, deepseq, dependent-map, dependent-sum
, dlist, extra, filepath, ghc, hashable, hls-graph, hw-fingertree
, lens, lens-aeson, lib, lsp, lsp-types, megaparsec, mtl
, opentelemetry, optparse-applicative, prettyprinter, random
, random-fu, regex-tdfa, row-types, stm, tasty, tasty-hunit
, tasty-quickcheck, tasty-rerun, text, time, transformers, unix
, unliftio, unordered-containers
}:
mkDerivation {
  pname = "hls-plugin-api";
  version = "2.6.0.0";
  sha256 = "c44d7e78ebf40c716f0b927c1202c531a0631038629b962a44fc7f07a9372482";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    aeson base co-log-core containers data-default dependent-map
    dependent-sum Diff dlist extra filepath ghc hashable hls-graph
    hw-fingertree lens lens-aeson lsp megaparsec mtl opentelemetry
    optparse-applicative prettyprinter regex-tdfa row-types stm text
    time transformers unix unliftio unordered-containers
  ];
  testHaskellDepends = [
    base containers data-default lens lsp-types tasty tasty-hunit
    tasty-quickcheck tasty-rerun text
  ];
  benchmarkHaskellDepends = [
    base criterion deepseq lsp-types random random-fu
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = true;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/haskell/haskell-language-server#readme";
  description = "Haskell Language Server API for plugin communication";
  license = lib.licenses.asl20;
  broken = false;
}