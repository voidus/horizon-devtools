{ mkDerivation, HUnit, aeson, base, base64-bytestring, binary
, bytestring, cmdargs, containers, directory, exceptions, filepath
, ghc, ghc-boot, ghc-parser, ghc-paths, ghc-syntax-highlighter
, haskeline, hlint, hspec, hspec-contrib, http-client
, http-client-tls, ipython-kernel, lib, parsec, process, random
, raw-strings-qq, setenv, shelly, split, stm, strict, text, time
, transformers, unix, unordered-containers, utf8-string, vector
}:
mkDerivation {
  pname = "ihaskell";
  version = "0.11.0.0";
  sha256 = "0d965e7ea299e590e95114f8cd54f58e80d8dfd43add8f9391755eb565d552d6";
  isLibrary = true;
  isExecutable = true;
  enableSeparateDataOutput = true;
  libraryHaskellDepends = [
    aeson base base64-bytestring binary bytestring cmdargs containers
    directory exceptions filepath ghc ghc-boot ghc-parser ghc-paths
    ghc-syntax-highlighter haskeline hlint http-client http-client-tls
    ipython-kernel parsec process random shelly split stm strict text
    time transformers unix unordered-containers utf8-string vector
  ];
  executableHaskellDepends = [
    aeson base bytestring containers directory ghc ipython-kernel
    process strict text transformers unix unordered-containers
  ];
  testHaskellDepends = [
    aeson base directory ghc ghc-paths hspec hspec-contrib HUnit
    raw-strings-qq setenv shelly text transformers
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = true;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "http://github.com/gibiansky/IHaskell";
  description = "A Haskell backend kernel for the Jupyter project";
  license = lib.licenses.mit;
  broken = false;
}