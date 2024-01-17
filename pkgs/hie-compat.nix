{ mkDerivation, array, base, bytestring, containers, directory
, filepath, ghc, ghc-boot, lib, transformers
}:
mkDerivation {
  pname = "hie-compat";
  version = "0.3.1.2";
  sha256 = "15686610410e41e3ded92a452022b4dc2f0948583f1e0260dfa361203e100554";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    array base bytestring containers directory filepath ghc ghc-boot
    transformers
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = true;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/haskell/haskell-language-server/tree/master/hie-compat#readme";
  description = "HIE files for GHC 8.8 and other HIE file backports";
  license = lib.licenses.asl20;
  broken = false;
}