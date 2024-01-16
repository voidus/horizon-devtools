{ pkgs, haskellLib }:

with haskellLib;

final: prev: {

  Rlang-QQ = null;

  cairo = final.callPackage ../pkgs/cairo.nix { cairo = pkgs.cairo; };

  foliage = null;

  glib = final.callPackage ../pkgs/glib.nix { glib = pkgs.glib; };

  ghcide-bench = null;

  ghcide-test-utils = null;

  ihaskell-charts = null;

  ihaskell-gnuplot = null;

  ihaskell-graphviz = null;

  ihaskell-plot = null;

  ihaskell-widgets = null;

  hls-class-plugin = null;

  hls-gadt-plugin = null;

  hls-hlint-plugin = null;

  hls-refactor-plugin = null;

  hls-retrie-plugin = null;

  hls-splice-plugin = null;

  pango = final.callPackage ../pkgs/pango.nix { pango = pkgs.pango; };

  repa = null;

  sandwich = null;

  shake-bench = null;

  # hls needs to be compiled fairly differently, because it's dynamic we need
  # to turn off profiling else ghc tries to look for dynamic profiled modules
  # which cannot exist.
  haskell-language-server = overrideCabal prev.haskell-language-server {
    enableLibraryProfiling = false;
    enableExecutableProfiling = false;
    enableSharedExecutables = true;
    preCheck = ''
      export PATH=$PATH:$PWD/dist/build/haskell-language-server:$PWD/dist/build/haskell-language-server-wrapper
      export HOME=$TMPDIR
    '';
    postInstall = ''
      RUNPATH=`patchelf --print-rpath $out/bin/haskell-language-server | cut -d: -f2-`
      GHC_VERSION=`ghc --version | awk '{print $NF;}'`
      mv "$out/bin/haskell-language-server" "$out/bin/.haskell-language-server-''${GHC_VERSION}-unwrapped"
      BOOT_PKGS=`ghc-pkg-$GHC_VERSION --global list --simple-output`
      ${pkgs.gnused}/bin/sed \
        -e "s!@@EXE_DIR@@!$out/bin!" \
        -e "s/@@EXE_NAME@@/.haskell-language-server-''${GHC_VERSION}-unwrapped/" \
        -e "s/@@GHC_VERSION@@/$GHC_VERSION/" \
        -e "s/@@BOOT_PKGS@@/$BOOT_PKGS/" \
        -e "s/@@ABI_HASHES@@/$(for dep in $BOOT_PKGS; do printf "%s:" "$dep" && ghc-pkg-$GHC_VERSION field $dep abi --simple-output ; done | tr '\n' ' ' | xargs)/" \
        -e "s!Consider installing ghc.* via ghcup or build HLS from source.!Visit https://haskell4nix.readthedocs.io/nixpkgs-users-guide.html#how-to-install-haskell-language-server to lear how to correctly install a matching hls for your ghc with nix.!" \
        bindist/wrapper.in > "$out/bin/haskell-language-server"
      ln -s "$out/bin/haskell-language-server" "$out/bin/haskell-language-server-$GHC_VERSION"
      chmod +x "$out/bin/haskell-language-server"
    '';
  };

  xformat = null;

}
