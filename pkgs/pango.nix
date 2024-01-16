{ mkDerivation, Cabal, array, base, cairo, containers, directory
, filepath, glib, gtk2hs-buildtools, lib, mtl, pango, pretty
, process, text
}:
mkDerivation {
  pname = "pango";
  version = "0.13.10.0";
  sha256 = "5d850591e68267dd3545e4f4e67717f89c68f3953552d0bcdf111f20370ab361";
  revision = "1";
  editedCabalFile = "0ngarn6nj4czgv34dr9p97dpykbxkx2ky5ww0alcz5zbn989j8zf";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = true;
  setupHaskellDepends = [ base Cabal filepath gtk2hs-buildtools ];
  libraryHaskellDepends = [
    array base cairo containers directory glib mtl pretty process text
  ];
  libraryPkgconfigDepends = [ pango ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = true;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "http://projects.haskell.org/gtk2hs/";
  description = "Binding to the Pango text rendering engine";
  license = lib.licenses.lgpl21Only;
  broken = false;
}