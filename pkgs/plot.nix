{ mkDerivation, array, base, cairo, colour, fetchgit, hmatrix, lib
, mtl, pango, transformers
}:
mkDerivation {
  pname = "plot";
  version = "0.2.3.11";
  src = fetchgit {
    url = "https://github.com/codedownio/haskell-plot";
    sha256 = "1snk70l7q98cqflgaqf6l75g4hpcnf284flm9rsmk8kkzd5nnh5k";
    rev = "dfa26022b5815bcd6a5dd6c818fcd2c4d25c6d44";
    fetchSubmodules = true;
  };
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    array base cairo colour hmatrix mtl pango transformers
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = true;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "http://github.com/amcphail/plot";
  description = "A plotting library, exportable as eps/pdf/svg/png or renderable with gtk";
  license = lib.licenses.bsd3;
  broken = false;
}