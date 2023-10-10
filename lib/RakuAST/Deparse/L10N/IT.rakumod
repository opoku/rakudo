# This file contains the Italian deparsing logic for the Raku
# Programming Language.

#- start of generated part of localization ------------------------------------
#- Generated on 2023-10-10T10:39:22+02:00 by tools/build/makeL10N.raku
#- PLEASE DON'T CHANGE ANYTHING BELOW THIS LINE

my constant %xlation = "block-default", "predefinita", "block-else", "altro", "block-elsif", "altro-se", "block-for", "per", "block-given", "dato", "block-if", "se", "block-loop", "ciclo", "block-orwith", "o-con", "block-repeat", "ripeti", "block-unless", "salvo-che", "block-until", "finché", "block-when", "quando", "block-whenever", "ogni-volta-che", "block-while", "mentre", "block-with", "con", "block-without", "senza", "constraint-where", "dove", "core-abs", "abs", "core-all", "tutti", "core-any", "ogni", "core-append", "aggiungi", "core-ast", "ast", "core-atomic-add-fetch", "atomic-add-fetch", "core-atomic-assign", "atomic-assign", "core-atomic-dec-fetch", "atomic-dec-fetch", "core-atomic-fetch", "atomic-fetch", "core-atomic-fetch-add", "atomic-fetch-add", "core-atomic-fetch-dec", "atomic-fetch-dec", "core-atomic-fetch-inc", "atomic-fetch-inc", "core-atomic-fetch-sub", "atomic-fetch-sub", "core-atomic-inc-fetch", "atomic-inc-fetch", "core-atomic-sub-fetch", "atomic-sub-fetch", "core-await", "aspetta", "core-bag", "borsa", "core-bail-out", "bail-out", "core-bless", "bless", "core-callframe", "callframe", "core-callsame", "callsame", "core-callwith", "callwith", "core-can-ok", "can-ok", "core-cas", "cas", "core-categorize", "categorizzare", "core-ceiling", "soffitto", "core-chars", "chars", "core-chdir", "chdir", "core-chmod", "chmod", "core-chomp", "chomp", "core-chop", "chop", "core-chown", "chown", "core-chr", "chr", "core-chrs", "chrs", "core-classify", "classificare", "core-close", "chide", "core-cmp-ok", "cmp-ok", "core-comb", "pettine", "core-combinations", "combinazioni", "core-cross", "cross", "core-deepmap", "mappa-profonda", "core-defined", "definito", "core-diag", "diag", "core-die", "muori", "core-dies-ok", "dies-ok", "core-dir", "dir", "core-does-ok", "does-ok", "core-done", "fatto", "core-duckmap", "mappa-anatra", "core-elems", "elems", "core-emit", "emettere", "core-end", "fine", "core-eval-dies-ok", "eval-dies-ok", "core-eval-lives-ok", "eval-lives-ok", "core-exit", "uscire", "core-exp", "exp", "core-expmod", "expmod", "core-fail", "fallire", "core-fails-like", "fails-like", "core-fc", "fc", "core-first", "primo", "core-flat", "piatto", "core-flip", "flip", "core-floor", "pavimento", "core-flunk", "flunk", "core-full-barrier", "barriera-completa", "core-get", "prendi", "core-getc", "getc", "core-gist", "essenza", "core-grep", "grep", "core-hash", "hash", "core-head", "testa", "core-indent", "indenta", "core-index", "indice", "core-indices", "indici", "core-indir", "indir", "core-is", "is", "core-is-approx", "is-approx", "core-is-deeply", "is-deeply", "core-isa-ok", "isa-ok", "core-isnt", "isnt", "core-item", "articolo", "core-join", "unirsi", "core-key", "chiave", "core-keys", "chiavi", "core-kv", "cv", "core-last", "ultimo", "core-lastcall", "ultima-chiamata", "core-lc", "lc", "core-like", "like", "core-lines", "linee", "core-link", "link", "core-list", "elenco", "core-lives-ok", "lives-ok", "core-lsb", "lsb", "core-make", "fare", "core-map", "mappa", "core-max", "max", "core-min", "min", "core-minmax", "minmax", "core-mix", "mix", "core-mkdir", "mkdir", "core-move", "muove", "core-msb", "msb", "core-next", "prossimo", "core-nextcallee", "prossimo-chiamato", "core-nextsame", "prossimo-esteso", "core-nextwith", "prossimo-con", "core-nok", "nok", "core-none", "nessuno", "core-not", "non", "core-note", "nota", "core-ok", "ok", "core-one", "uno", "core-open", "aperto", "core-ord", "ord", "core-ords", "ords", "core-pair", "paio", "core-pairs", "pai", "core-parse-base", "parse-base", "core-pass", "pass", "core-permutations", "permutazioni", "core-pick", "prendi", "core-plan", "plan", "core-pop", "pop", "core-prepend", "prepend", "core-print", "stampa", "core-printf", "f-stampa", "core-proceed", "procedi", "core-prompt", "richiesta", "core-push", "spinge", "core-put", "metti", "core-rand", "rand", "core-redo", "rifai", "core-reduce", "riduci", "core-repeated", "ripetuto", "core-repl", "repl", "core-return", "restituisci", "core-return-rw", "return-rw", "core-reverse", "reverse", "core-rindex", "rindex", "core-rmdir", "rmdir", "core-roll", "roll", "core-rotate", "rotate", "core-round", "round", "core-roundrobin", "roundrobin", "core-run", "run", "core-samecase", "stesso-caso", "core-samemark", "stessa-marca", "core-samewith", "stessa-con", "core-say", "dillo", "core-set", "set", "core-shell", "shell", "core-shift", "sposta", "core-sign", "firma", "core-signal", "segno", "core-skip", "salta", "core-skip-rest", "skip-rest", "core-sleep", "dormi", "core-sleep-timer", "sleep-timer", "core-sleep-until", "dormi-fino-a", "core-slip", "scivola", "core-slurp", "bevi", "core-snip", "taglia", "core-snitch", "fail-la-spia", "core-so", "così", "core-sort", "ordina", "core-splice", "unisci", "core-split", "divitevi", "core-sprintf", "sprintf", "core-spurt", "spruzza", "core-sqrt", "sqrt", "core-squish", "schiaccia", "core-srand", "srand", "core-subbuf", "subbuf", "core-subbuf-rw", "subbuf-rw", "core-subtest", "subtest", "core-succeed", "riuscirci", "core-sum", "somma", "core-symlink", "symlink", "core-tail", "coda", "core-take", "prendi", "core-take-rw", "prendi-rw", "core-tc", "tc", "core-tclc", "tclc", "core-throws-like", "throws-like", "core-todo", "todo", "core-trim", "taglia", "core-trim-leading", "taglia-in-testa", "core-trim-trailing", "taglia-in-coda", "core-truncate", "troncare", "core-uc", "uc", "core-unimatch", "unimatch", "core-uniname", "uniname", "core-uninames", "uninames", "core-uniparse", "uniparse", "core-uniprop", "uniprop", "core-uniprops", "uniprops", "core-unique", "unique", "core-unival", "unival", "core-univals", "univals", "core-unlike", "unlike", "core-unlink", "unlink", "core-unshift", "unshift", "core-use-ok", "use-ok", "core-val", "val", "core-value", "valore", "core-values", "valori", "core-warn", "avviso", "core-wordcase", "caso-della-parola", "core-words", "parole", "core-zip", "zip", "infix-(cont)", "(cont)", "infix-(elem)", "(elem)", "infix-X", "X", "infix-Z", "Z", "infix-^ff", "^ff", "infix-^ff^", "^ff^", "infix-^fff", "^fff", "infix-^fff^", "^fff^", "infix-after", "dopo", "infix-and", "e", "infix-andthen", "e-poi", "infix-before", "prima-di", "infix-but", "però", "infix-cmp", "cmp", "infix-coll", "coll", "infix-div", "div", "infix-does", "fa", "infix-eq", "eq", "infix-ff", "ff", "infix-ff^", "ff^", "infix-fff", "fff", "infix-fff^", "fff^", "infix-gcd", "gcd", "infix-ge", "ge", "infix-gt", "gt", "infix-lcm", "lcm", "infix-le", "le", "infix-leg", "leg", "infix-lt", "lt", "infix-max", "max", "infix-min", "min", "infix-minmax", "minmax", "infix-mod", "mod", "infix-ne", "ne", "infix-notandthen", "no-e-poi", "infix-o", "c", "infix-or", "o", "infix-orelse", "oppure", "infix-unicmp", "unicmp", "infix-x", "x", "infix-xx", "xx", "meta-R", "R", "meta-X", "X", "meta-Z", "Z", "modifier-for", "per", "modifier-given", "dato", "modifier-if", "se", "modifier-unless", "salvo-che", "modifier-until", "fino-a", "modifier-when", "quando", "modifier-while", "mentre", "modifier-with", "con", "modifier-without", "senza", "multi-multi", "multi", "multi-only", "soltanto", "multi-proto", "proto", "package-class", "classe", "package-grammar", "grammatica", "package-knowhow", "so-come", "package-module", "modulo", "package-native", "nativo", "package-package", "pacchetto", "package-role", "ruolo", "phaser-BEGIN", "COMINCIA", "phaser-CATCH", "PRENDI", "phaser-CHECK", "CONTROLLA", "phaser-CLOSE", "CHIUDE", "phaser-CONTROL", "CONTROLLO", "phaser-DOC", "DOC", "phaser-END", "FINE", "phaser-ENTER", "ENTRA", "phaser-FIRST", "PRIMA", "phaser-INIT", "INIT", "phaser-KEEP", "TIENI", "phaser-LAST", "ULTIMO", "phaser-LEAVE", "VATTENE", "phaser-NEXT", "PROSSIMO", "phaser-POST", "POST", "phaser-PRE", "PRE", "phaser-QUIT", "LASCIA", "phaser-UNDO", "ANNULLA", "prefix-not", "non", "prefix-so", "così", "routine-method", "metodo", "routine-regex", "regex", "routine-rule", "regola", "routine-sub", "sub", "routine-submethod", "submethod", "routine-token", "gettone", "scope-HAS", "HA", "scope-anon", "anon", "scope-augment", "augment", "scope-constant", "constante", "scope-has", "ha", "scope-my", "il-mio", "scope-our", "il-nostro", "scope-state", "stato", "scope-supersede", "sostituire", "scope-unit", "unità", "stmt-prefix-also", "anche", "stmt-prefix-do", "fate", "stmt-prefix-eager", "impaziente", "stmt-prefix-gather", "raccogliere", "stmt-prefix-hyper", "hyper", "stmt-prefix-lazy", "pigro", "stmt-prefix-quietly", "tranquillamente", "stmt-prefix-race", "gara", "stmt-prefix-react", "reagisce", "stmt-prefix-sink", "cala", "stmt-prefix-start", "comincio", "stmt-prefix-supply", "fornitura", "stmt-prefix-try", "prova", "term-nano", "nano", "term-now", "gia", "term-rand", "rand", "term-self", "se-stesso", "term-time", "tempo", "trait-is-DEPRECATED", "DEPRECATED", "trait-is-built", "built", "trait-is-copy", "copy", "trait-is-default", "default", "trait-is-equiv", "equiv", "trait-is-export", "export", "trait-is-hidden-from-USAGE", "hidden-from-USAGE", "trait-is-hidden-from-backtrace", "hidden-from-backtrace", "trait-is-implementation-detail", "implementation-detail", "trait-is-looser", "looser", "trait-is-nodal", "nodal", "trait-is-pure", "pure", "trait-is-raw", "raw", "trait-is-readonly", "readonly", "trait-is-rw", "rw", "trait-is-tighter", "tighter", "traitmod-does", "fa", "traitmod-handles", "gestisce", "traitmod-hides", "nasconde", "traitmod-is", "è", "traitmod-of", "da", "traitmod-returns", "ritorna", "typer-enum", "enum", "typer-subset", "subset", "use-import", "importare", "use-need", "bisognare", "use-no", "non", "use-require", "richiedere", "use-use", "usare";
role RakuAST::Deparse::L10N::IT {
    method xsyn (str $prefix, str $key) {
        %xlation{"$prefix-$key"} // $key
    }
}

#- PLEASE DON'T CHANGE ANYTHING ABOVE THIS LINE
#- end of generated part of localization --------------------------------------

# vim: expandtab shiftwidth=4
