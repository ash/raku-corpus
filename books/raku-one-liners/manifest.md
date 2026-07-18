# Raku One-Liners — extracted programs

Source: Andrew Shitov, *Raku One-Liners* (DeepText, 2019), from pdftotext -layout conversion.
Syntax-checked with Rakudo v2026.06 (`raku -c`). Sample inputs: `data.txt`, `text.txt` (generic), `a.txt`, `b.txt` (verbatim from the "Merging files horizontally" section).

## Chapter 1 — Command-Line Options

- `01-print-current-user.sh` — Using command-line options / -e. Book prints the user name; note `-e'$*USER'` alone produces no output on modern Rakudo (kept verbatim, incl. `perl6` prefix as printed).
- `02-sum-values-in-a-row.sh` — -n (sum values in a row). Needs data.txt. Verified output matches book.
- `03a-reverse-each-line.sh` — -p (reverse each line, `.=flip`). Needs data.txt.
- `03b-reverse-each-line.sh` — -p section, equivalent without -p (`.flip.say`).
- `04-double-space-a-file.sh` — Double-space a file. Needs text.txt.
- `05a-remove-all-blank-lines.sh` — Remove all blank lines. Needs text.txt.
- `05b-remove-all-blank-lines.sh` — Remove all blank lines (whitespace-only variant, `/\S/`).
- `06-number-all-lines.sh` — Number all lines in a file. Needs text.txt.
- `07-convert-text-to-uppercase.sh` — Convert all text to uppercase. Needs text.txt.
- `08-strip-whitespace.sh` — Strip whitespace from beginning and end of each line. Needs text.txt.
- `09-print-first-line.sh` — Print the first line of a file. Needs text.txt.
- `10-print-first-10-lines.sh` — Print the first 10 lines of a file. Needs text.txt.
- `11-read-argfiles.raku` — Reading files with $*ARGFILES. Run with file arguments or stdin.

## Chapter 2 — Working with Files

- `12-renaming-files.raku` — Renaming files. SIDE-EFFECTS (renames files given as args; last arg is the pattern, e.g. `img_0000.jpg`). Syntax-checked only, not executed.
- `13a-merge-files-horizontally.raku` — Merging files horizontally. Run: `raku 13a-... a.txt b.txt`.
- `13b-merge-files-horizontally.raku` — Merging files horizontally (space-separated variant). Verified against book output.
- `14a-reversing-a-file.raku` — Reversing a file (via $*IN). Needs stdin.
- `14b-reversing-a-file.raku` — Reversing a file (bare `lines`). Needs stdin.
- `14c-reversing-a-file.raku` — Reversing a file (filename from @*ARGS).
- `15-show-line-separators.raku` — Reversing a file section: show `.nl-in` line separators. Needs filename arg.
- `16a-reverse-without-chomp.raku` — Reversing a file with `chomp => False`. Needs filename arg.
- `16b-reverse-custom-nl-in.raku` — Reversing a file with custom `nl-in => "\r"`. Multi-line. Needs filename arg.

## Chapter 3 — Working with Numbers

- `17a-multiples-of-3-and-5.raku` — Grepping multiples of 3 and 5. Verified: prints 233168.
- `17b-multiples-of-3-and-5.raku` — Same, method-chain form.
- `17c-multiples-of-3-and-5.raku` — Same, author's original longer solution (multi-line, uses `∪`).
- `18a-random-integers.raku` — Generating random integers.
- `18b-random-integers-seeded.sh` — Generating random integers with `srand(10)`.
- `19-big-number-power.sh` — Working with big numbers (`** 1000`). Prints a very long integer.
- `20a-largest-palindromic-product.raku` — Testing palindromic numbers. SLOW (~generates all products).
- `20b-largest-palindromic-product.raku` — Same with `.head(10)` (fast variant).
- `21-even-fibonacci-sum.raku` — Adding up even Fibonacci numbers. Verified: prints 4613732.
- `22-fibonacci-1000-digits-index.raku` — Playing with Fibonacci numbers (`first :k`).
- `23a-distance-complex-plane.raku` — Distance between two points (complex numbers).
- `23b-distance-pythagoras.raku` — Distance between two points (Pythagoras, superscripts).
- `24-10001st-prime.raku` — Playing with prime numbers. SLOW ("about half-a-minute" per book).
- `25a-pi-draft.raku` — Using map and Seq to compute π: draft loop version. Multi-line.
- `25b-pi-with-map.raku` — π, Part 1 (map).
- `25c-pi-rat-sequence.raku` — π, Part 2 (Rat sequence). Rejoined from wrapped print lines.
- `25d-pi-two-sequences.raku` — π, Part 3 (Damian Conway's `«/«` version). Rejoined from wrapped print lines.
- `26a-column-totals.raku` — Computing totals. Needs stdin table (e.g. `100.20 303.50 150.25` rows). Verified.
- `26b-column-totals-skip-first.raku` — Computing totals, skipping the first column. Needs stdin.
- `27a-sum-of-factorials-of-digits.raku` — Sum of numbers equal to sum of factorials of digits. Slow-ish.
- `27b-sum-of-factorials-of-digits.raku` — Same, "practical two-liner" with precomputed factorials. Multi-line.
- `28-42-via-the-cubes.sh` — 42 via the cubes (superscript ³). Book shows it under `$ time`; the `time` prefix dropped.

## Chapter 4 — Working with Strings

- `29a-random-passwords.raku` — Generating random passwords.
- `29b-password-character-set.raku` — Same section: show the '0'..'z' character set.
- `30a-circle-area-unicode.raku` — The joy of Unicode. A `my $r` prelude was added for runnability (marked in the file). PDF text shows `say π × $%²` — the variable was restored as `$r` to match the ASCII variant in the same section.
- `30b-circle-area-ascii.raku` — The joy of Unicode, ASCII form (`say pi * $r ** 2`). A `my $r` prelude was added for runnability (marked in the file).

## Chapter 5 — Working with Dates

- `31a-date-today.raku` — What's the date today?
- `31b-date-today.raku` — Same, subroutine-call style.
- `32-custom-date-formatter.raku` — Custom formatter for DateTime. Multi-line.
- `33a-count-sundays.raku` — How many days in the century match the condition? Multi-line.
- `33b-count-sundays.raku` — Same, with explicit month/day arguments. Multi-line.
- `33c-count-sundays.raku` — Same, two-grep variant. Multi-line.
- `34a-count-sundays-gather.raku` — Another solution of the same problem (gather/take + X). Multi-line.
- `34b-count-sundays-map.raku` — Same, `+(...)` map variant. Multi-line.

## Chapter 6 — Raku Syntax

- `35-factorial-reduction.raku` — Reduction operator, Example 1: factorial.
- `36-smallest-multiple-lcm.raku` — Reduction operator, Example 2: `[lcm] 1..20`.
- `37-rotate-matrix.raku` — Reduction operator, Example 3: matrices (`[Z]`). Note: no output when run as a script (book shows REPL result); wrap in `say` to see it.
- `38a-multiplication-operator.raku` — All the stars: multiplication operator.
- `38b-exponentiation-operator.raku` — All the stars: exponentiation operator.
- `39-regex-star-quantifier.raku` — A regex repetition quantifier (snow level). Multi-line.
- `40-regex-min-max-quantifier.raku` — Min to max repetitions (`'.' ** 1..3`). Multi-line.
- `41-regex-open-range-quantifier.raku` — Open-ended quantifier (`'.' ** 4..*`). Multi-line.
- `42-slurpy-arguments.raku` — Slurpy arguments (`*@items`). Multi-line.
- `43-slurpy-hash.raku` — Slurpy hash parameters (`*%data`). Multi-line.
- `44a-slurpy-single-star.raku` — Slurpy-slurpy section, single-star behaviour. Multi-line.
- `44b-slurpy-slurpy.raku` — Slurpy-slurpy (`**@items`). Multi-line; `my @a/@b` declarations carried over from the preceding snippet as the book implies.
- `45a-dynamic-scope.raku` — Twigil for dynamic scope. Multi-line.
- `45b-dynamic-scope-blocks.raku` — Dynamic scope, new value vs new variable. Multi-line.
- `46-compiler-variables.raku` — Compiler variables (@*ARGS, %*ENV).
- `47-call-all-methods.raku` — All methods with the given name (`.*giver`). Multi-line.
- `48-infinite-integers.raku` — Whatever: `.say for 1 .. *`. SIDE-EFFECTS: infinite loop; syntax-checked only, do not run unattended.
- `49-whatever-multi-method.raku` — Whatever: class N with Int/Whatever multi methods + usage. Multi-line (class + usage combined as the book presents them consecutively).
- `50-echo-whatever.raku` — Whatever passed to an ordinary sub. Multi-line.
- `51-whatevercode-multi-method.raku` — WhateverCode: class N with all four display candidates + calls. Multi-line; ASSEMBLED from the section's incremental snippets (base class + added WhateverCode and arity-2 methods + call examples).
- `52a-stars-homework.raku` — Homework: all-stars one-liner (`* * * * *` over prime Fibonacci numbers).
- `52b-stars-homework-expanded.raku` — Homework: final de-starred version. Multi-line.
- `53a-eval-simple.raku` — The EVAL routine, case 1.
- `53b-eval-block.raku` — EVAL, case 2 (prints a Block gist — surprising-behaviour demo).
- `53c-eval-monkey.raku` — EVAL, case 4 (MONKEY-SEE-NO-EVAL). Multi-line.
- `53d-eval-calculation.raku` — EVAL, case 5 (calculation in interpolated block). Multi-line.

## Chapter 7 — Raku Golf

- `54a-golf-primes.raku` — The first test (22-char golf). The Unicode char Ⅽ (ROMAN NUMERAL ONE HUNDRED, U+216D) was invisible in the pdftotext output and RESTORED from the book's description; verified it prints primes below 100.
- `54b-golf-primes-full.raku` — The first test, non-optimised version.
- `55a-golf-fibonacci.raku` — The second test: 33-char version.
- `55b-golf-fibonacci.raku` — 28-char version (spaces removed).
- `55c-golf-fibonacci.raku` — 24-char version (`>>.say`).
- `55d-golf-fibonacci.raku` — 21-char version (Unicode `…` and `»`).
- `55e-golf-fibonacci.raku` — 23-char version (stop at `*>514229`).
- `55f-golf-fibonacci.raku` — 19-char version (`*>7⁷`). Verified.
- `55g-golf-fibonacci.raku` — regex-stop idea (`…/20/`).
- `56a-postfix-loop.raku` — Tips: using postfix forms (block form).
- `56b-postfix-loop.raku` — Tips: using postfix forms (postfix form).
- `57-caret-range.raku` — Tips: ranges starting from 0 (`^10`).
- `58-sequence-downwards.raku` — Tips: counting downwards with a sequence (`10…1`).
- `59-map-instead-of-loop.raku` — Tips: using map instead of a loop.
- `60-methods-chaining.raku` — Tips: choosing between methods and functions. Note: no output when run as a script (sunk expression).
- `61-sigilless-variable.raku` — Tips: using \ to make sigilless variables.
- `62-put-vs-say.raku` — Tips: choosing between put and say. Combined the two REPL lines into one script.

## Appendix on Compiler Internals

- `63-exact-zero.raku` — What's behind 0.1 + 0.2. Verified: prints 0.
- `64-rat-literals.raku` — Same with explicit Rat literals. Verified: prints 0.
- `65-target-parse.sh` — Inspect the parse tree with `--target=parse`. Body syntax-checked; the flag itself prints the AST.

## Skipped

- Rakudo/NQP internals: `rand`/`srand`/Range/Seq/Date.new/grammar tokens and action methods quoted from Rakudo source (Ch. 3, 6, Appendix).
- REPL exploration transcripts: `(1..10).WHAT`, `.print for 10...1`, `pi.gist.say` / `pi.*gist.say`, `.nude.say` demos, `say/put 1..10` (kept as combined file 62), `(1,2,3) X* (4,5,6)` etc.
- Error-message demonstrations: `rand(20)`, `EVAL("say {789}")` without pragma, `EVAL {say 123}`, `eval('say 42')`, `10..1` Nil demo.
- Incomplete fragments: Project Euler 13 sum (contains "# Other 98 numbers here" placeholder inside quote-words), `√(...)` homework (requires a modified grammar), `$ raku work.pl a.txt b.txt` invocations, `sub MAIN(*@files)` $*ARGFILES caveat demo, golf tips referencing undeclared variables (`if ($x > 0)...`, `say $z if $x < 10 < $y`, `abs $x`, `$x≅$y`, `$x².say`, `.say if $x>0`, `$x>0&&.say`, bare `Date.new(...)` comparison lines, `my @a = ('alpha','beta')` declarations), intermediate homework transformations without output.
- Unrecoverable pdftotext loss: the 18-char Fibonacci golf variant using a single Unicode character with numeric value 800 000 — the character did not survive conversion and could not be reliably restored (between 55f and 55g in the book).
- Trivial repeats: `raku -ne'...' < data.txt` redirection variant of 02, `say 42`/`say(42)`, `$_.say for 1..10`, `.say for 1..10`/`1...10`/`1…10` triple (covered by 56b/58), `say 1 * 2 * 3 ...` and `say 1 lcm 2 lcm 3 ...` expansion demos.
