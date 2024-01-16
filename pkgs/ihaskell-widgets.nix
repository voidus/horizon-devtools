{ mkDerivation, aeson, base, bytestring, containers, ihaskell
, ipython-kernel, lib, scientific, singletons, singletons-base
, text, unix, unordered-containers, vector, vinyl
}:
mkDerivation {
  pname = "ihaskell-widgets";
  version = "0.4.0.0";
  sha256 = "84bb33033ea43a6da2b7e037e6573f765ac0531d5812dfac40f0a0e46019a372";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    aeson base bytestring containers ihaskell ipython-kernel scientific
    singletons singletons-base text unix unordered-containers vector
    vinyl
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = true;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "http://www.github.com/gibiansky/IHaskell";
  description = "IPython standard widgets for IHaskell";
  license = lib.licenses.mit;
  broken = false;
}