{ pkgs, ... }:

final: prev: with pkgs.haskell.lib; {
  HTF = final.callPackage (./pkgs/HTF.nix) { };

  MemoTrie = final.callPackage (./pkgs/MemoTrie.nix) { };

  MonadPrompt = final.callPackage (./pkgs/MonadPrompt.nix) { };

  Only = final.callPackage (./pkgs/Only.nix) { };

  aeson = final.callPackage (./pkgs/aeson.nix) { };

  algebraic-graphs = final.callPackage (./pkgs/algebraic-graphs.nix) { };

  apply-refact = final.callPackage (./pkgs/apply-refact.nix) { };

  attoparsec-aeson = final.callPackage (./pkgs/attoparsec-aeson.nix) { };

  base-prelude = final.callPackage (./pkgs/base-prelude.nix) { };

  blaze-textual = final.callPackage (./pkgs/blaze-textual.nix) { };

  co-log-core = final.callPackage (./pkgs/co-log-core.nix) { };

  commutative-semigroups = final.callPackage (./pkgs/commutative-semigroups.nix) { };

  conduit-parse = final.callPackage (./pkgs/conduit-parse.nix) { };

  constraints-extras = final.callPackage (./pkgs/constraints-extras.nix) { };

  cpphs = final.callPackage (./pkgs/cpphs.nix) { };

  cryptohash-md5 = final.callPackage (./pkgs/cryptohash-md5.nix) { };

  deferred-folds = final.callPackage (./pkgs/deferred-folds.nix) { };

  dependent-map = final.callPackage (./pkgs/dependent-map.nix) { };

  dependent-sum = final.callPackage (./pkgs/dependent-sum.nix) { };

  deriving-aeson = final.callPackage (./pkgs/deriving-aeson.nix) { };

  direct-sqlite = final.callPackage (./pkgs/direct-sqlite.nix) { };

  doctest = final.callPackage (./pkgs/doctest.nix) { };

  doctest-discover = final.callPackage (./pkgs/doctest-discover.nix) { };

  enummapset = final.callPackage (./pkgs/enummapset.nix) { };

  filemanip = final.callPackage (./pkgs/filemanip.nix) { };

  filtrable = final.callPackage (./pkgs/filtrable.nix) { };

  floatshow = final.callPackage (./pkgs/floatshow.nix) { };

  focus = final.callPackage (./pkgs/focus.nix) { };

  fourmolu = final.callPackage (./pkgs/fourmolu.nix) { };

  fsnotify = final.callPackage (./pkgs/fsnotify.nix) { };

  fuzzy = final.callPackage (./pkgs/fuzzy.nix) { };

  generic-lens = final.callPackage (./pkgs/generic-lens.nix) { };

  generic-lens-core = final.callPackage (./pkgs/generic-lens-core.nix) { };

  ghc-check = final.callPackage (./pkgs/ghc-check.nix) { };

  ghc-exactprint = final.callPackage (./pkgs/ghc-exactprint.nix) { };

  ghc-lib-parser = final.callPackage (./pkgs/ghc-lib-parser.nix) { };

  ghc-lib-parser-ex = final.callPackage (./pkgs/ghc-lib-parser-ex.nix) { };

  ghc-trace-events = final.callPackage (./pkgs/ghc-trace-events.nix) { };

  ghcid = final.callPackage (./pkgs/ghcid.nix) { };

  ghcide = final.callPackage (./pkgs/ghcide.nix) { };

  ghcide-bench = final.callPackage (./pkgs/ghcide-bench.nix) { };

  ghcide-test-utils = final.callPackage (./pkgs/ghcide-test-utils.nix) { };

  githash = final.callPackage (./pkgs/githash.nix) { };

  groups = final.callPackage (./pkgs/groups.nix) { };

  haddock-library = final.callPackage (./pkgs/haddock-library.nix) { };

  haskell-language-server = final.callPackage (./pkgs/haskell-language-server.nix) { };

  haskell-src = final.callPackage (./pkgs/haskell-src.nix) { };

  hie-bios = final.callPackage (./pkgs/hie-bios.nix) { };

  hie-compat = final.callPackage (./pkgs/hie-compat.nix) { };

  hiedb = final.callPackage (./pkgs/hiedb.nix) { };

  hinotify = final.callPackage (./pkgs/hinotify.nix) { };

  hlint = final.callPackage (./pkgs/hlint.nix) { };

  hls-alternate-number-format-plugin = final.callPackage (./pkgs/hls-alternate-number-format-plugin.nix) { };

  hls-cabal-fmt-plugin = final.callPackage (./pkgs/hls-cabal-fmt-plugin.nix) { };

  hls-cabal-plugin = final.callPackage (./pkgs/hls-cabal-plugin.nix) { };

  hls-call-hierarchy-plugin = final.callPackage (./pkgs/hls-call-hierarchy-plugin.nix) { };

  hls-change-type-signature-plugin = final.callPackage (./pkgs/hls-change-type-signature-plugin.nix) { };

  hls-class-plugin = final.callPackage (./pkgs/hls-class-plugin.nix) { };

  hls-code-range-plugin = final.callPackage (./pkgs/hls-code-range-plugin.nix) { };

  hls-explicit-fixity-plugin = final.callPackage (./pkgs/hls-explicit-fixity-plugin.nix) { };

  hls-explicit-imports-plugin = final.callPackage (./pkgs/hls-explicit-imports-plugin.nix) { };

  hls-explicit-record-fields-plugin = final.callPackage (./pkgs/hls-explicit-record-fields-plugin.nix) { };

  hls-fourmolu-plugin = final.callPackage (./pkgs/hls-fourmolu-plugin.nix) { };

  hls-gadt-plugin = final.callPackage (./pkgs/hls-gadt-plugin.nix) { };

  hls-graph = final.callPackage (./pkgs/hls-graph.nix) { };

  hls-hlint-plugin = final.callPackage (./pkgs/hls-hlint-plugin.nix) { };

  hls-module-name-plugin = final.callPackage (./pkgs/hls-module-name-plugin.nix) { };

  hls-overloaded-record-dot-plugin = final.callPackage (./pkgs/hls-overloaded-record-dot-plugin.nix) { };

  hls-plugin-api = final.callPackage (./pkgs/hls-plugin-api.nix) { };

  hls-pragmas-plugin = final.callPackage (./pkgs/hls-pragmas-plugin.nix) { };

  hls-qualify-imported-names-plugin = final.callPackage (./pkgs/hls-qualify-imported-names-plugin.nix) { };

  hls-refactor-plugin = final.callPackage (./pkgs/hls-refactor-plugin.nix) { };

  hls-retrie-plugin = final.callPackage (./pkgs/hls-retrie-plugin.nix) { };

  hls-splice-plugin = final.callPackage (./pkgs/hls-splice-plugin.nix) { };

  hls-test-utils = final.callPackage (./pkgs/hls-test-utils.nix) { };

  hp2pretty = final.callPackage (./pkgs/hp2pretty.nix) { };

  hspec-attoparsec = final.callPackage (./pkgs/hspec-attoparsec.nix) { };

  hw-fingertree = final.callPackage (./pkgs/hw-fingertree.nix) { };

  hw-hspec-hedgehog = final.callPackage (./pkgs/hw-hspec-hedgehog.nix) { };

  hw-prim = final.callPackage (./pkgs/hw-prim.nix) { };

  hxt = final.callPackage (./pkgs/hxt.nix) { };

  hxt-charproperties = final.callPackage (./pkgs/hxt-charproperties.nix) { };

  hxt-regex-xmlschema = final.callPackage (./pkgs/hxt-regex-xmlschema.nix) { };

  hxt-unicode = final.callPackage (./pkgs/hxt-unicode.nix) { };

  implicit-hie = final.callPackage (./pkgs/implicit-hie.nix) { };

  implicit-hie-cradle = final.callPackage (./pkgs/implicit-hie-cradle.nix) { };

  indexed-profunctors = final.callPackage (./pkgs/indexed-profunctors.nix) { };

  keys = final.callPackage (./pkgs/keys.nix) { };

  list-t = final.callPackage (./pkgs/list-t.nix) { };

  lsp = final.callPackage (./pkgs/lsp.nix) { };

  lsp-test = final.callPackage (./pkgs/lsp-test.nix) { };

  lsp-types = final.callPackage (./pkgs/lsp-types.nix) { };

  lucid = final.callPackage (./pkgs/lucid.nix) { };

  mod = final.callPackage (./pkgs/mod.nix) { };

  monad-loops = final.callPackage (./pkgs/monad-loops.nix) { };

  monoid-subclasses = final.callPackage (./pkgs/monoid-subclasses.nix) { };

  mtl-prelude = final.callPackage (./pkgs/mtl-prelude.nix) { };

  network-info = final.callPackage (./pkgs/network-info.nix) { };

  newtype-generics = final.callPackage (./pkgs/newtype-generics.nix) { };

  opentelemetry = final.callPackage (./pkgs/opentelemetry.nix) { };

  optparse-simple = final.callPackage (./pkgs/optparse-simple.nix) { };

  ordered-containers = final.callPackage (./pkgs/ordered-containers.nix) { };

  parsers-megaparsec = final.callPackage (./pkgs/parsers-megaparsec.nix) { };

  pointed = final.callPackage (./pkgs/pointed.nix) { };

  polyparse = final.callPackage (./pkgs/polyparse.nix) { };

  primes = final.callPackage (./pkgs/primes.nix) { };

  primitive-extras = final.callPackage (./pkgs/primitive-extras.nix) { };

  primitive-unlifted = final.callPackage (./pkgs/primitive-unlifted.nix) { };

  random-fu = final.callPackage (./pkgs/random-fu.nix) { };

  rebase = final.callPackage (./pkgs/rebase.nix) { };

  refact = final.callPackage (./pkgs/refact.nix) { };

  regex = final.callPackage (./pkgs/regex.nix) { };

  regex-applicative = final.callPackage (./pkgs/regex-applicative.nix) { };

  regex-compat = final.callPackage (./pkgs/regex-compat.nix) { };

  regex-pcre-builtin = final.callPackage (./pkgs/regex-pcre-builtin.nix) { };

  rerebase = final.callPackage (./pkgs/rerebase.nix) { };

  retrie = final.callPackage (./pkgs/retrie.nix) { };

  row-types = final.callPackage (./pkgs/row-types.nix) { };

  rvar = final.callPackage (./pkgs/rvar.nix) { };

  sorted-list = final.callPackage (./pkgs/sorted-list.nix) { };

  sqlite-simple = final.callPackage (./pkgs/sqlite-simple.nix) { };

  stm-containers = final.callPackage (./pkgs/stm-containers.nix) { };

  stm-hamt = final.callPackage (./pkgs/stm-hamt.nix) { };

  tasty-rerun = final.callPackage (./pkgs/tasty-rerun.nix) { };

  text-rope = final.callPackage (./pkgs/text-rope.nix) { };

  time-locale-compat = final.callPackage (./pkgs/time-locale-compat.nix) { };

  uuid = final.callPackage (./pkgs/uuid.nix) { };

  vector-instances = final.callPackage (./pkgs/vector-instances.nix) { };

  xmlgen = final.callPackage (./pkgs/xmlgen.nix) { };

}
