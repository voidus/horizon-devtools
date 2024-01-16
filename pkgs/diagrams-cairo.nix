{ mkDerivation, JuicyPixels, array, base, bytestring, cairo, colour
, containers, data-default-class, diagrams-core, diagrams-lib
, filepath, hashable, lens, lib, mtl, optparse-applicative, pango
, split, statestack, transformers, unix, vector
}:
mkDerivation {
  pname = "diagrams-cairo";
  version = "1.4.2.1";
  sha256 = "ec53a0786d6f2fa2f5036b7fd70fe9a2083fc4b41e63950e5010e74e2a52153b";
  revision = "1";
  editedCabalFile = "11a0y68w0gnp7vfbqzh4wnmi514axx6zpcih5byrbanx4w5b0qhh";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    array base bytestring cairo colour containers data-default-class
    diagrams-core diagrams-lib filepath hashable JuicyPixels lens mtl
    optparse-applicative pango split statestack transformers unix
    vector
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = true;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://diagrams.github.io";
  description = "Cairo backend for diagrams drawing EDSL";
  license = lib.licenses.bsd3;
  broken = false;
}