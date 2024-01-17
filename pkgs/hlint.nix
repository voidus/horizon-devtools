{ mkDerivation, aeson, ansi-terminal, base, bytestring, cmdargs
, containers, cpphs, data-default, deriving-aeson, directory, extra
, fetchgit, file-embed, filepath, filepattern, ghc-lib-parser
, ghc-lib-parser-ex, hscolour, lib, process, refact, text
, transformers, uniplate, unordered-containers, utf8-string, vector
, yaml
}:
mkDerivation {
  pname = "hlint";
  version = "3.8";
  src = fetchgit {
    url = "https://github.com/ndmitchell/hlint";
    sha256 = "00avp4wr9c3dmfp5lpxnkzkyzvj2kvqdxlgz4kvpk167kmdbcind";
    rev = "449f466bda01e782a1f1b6133f150160701ca371";
    fetchSubmodules = true;
  };
  isLibrary = true;
  isExecutable = true;
  enableSeparateDataOutput = true;
  libraryHaskellDepends = [
    aeson ansi-terminal base bytestring cmdargs containers cpphs
    data-default deriving-aeson directory extra file-embed filepath
    filepattern ghc-lib-parser ghc-lib-parser-ex hscolour process
    refact text transformers uniplate unordered-containers utf8-string
    vector yaml
  ];
  executableHaskellDepends = [ base ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = true;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/ndmitchell/hlint#readme";
  description = "Source code suggestions";
  license = lib.licenses.bsd3;
  broken = false;
}