# raku-corpus

A corpus of real-world Raku (Perl 6) programs written by Andrew Shitov over the years
2015–2024, collected from his books, the Raku course, programming-challenge solutions,
and assorted experiments.

The purpose of the corpus is to test Raku implementations against *real* code.
The [Roast](https://github.com/Raku/roast) spec suite tests language features mostly in
isolation; real programs combine features in ways Roast never does, and that is where
implementations break. This corpus is used as a test target for
[Raku++](https://github.com/ash/rakupp).

## Layout

| Directory | Programs | Source | Contents |
|---|---:|---|---|
| `books/perl6-at-a-glance/` | 234 | [ash/perl6-at-a-glance](https://github.com/ash/perl6-at-a-glance) | Programs from the book *Perl 6 at a Glance* (2017) |
| `books/using-raku/` | 177 | [ash/p6challenges](https://github.com/ash/p6challenges) | Programs from *Using Perl 6* (2017) / *Using Raku* (2019): 100 programming challenges |
| `books/raku-one-liners/` | 102 | extracted from the book PDF | One-liners from *Raku One-Liners* (2019) |
| `books/perl6-calendar-2019/` | 12 | extracted from the calendar PDF | The 12 monthly programs of the *Perl 6 Calendar 2019* |
| `course/` | 435 | [ash/raku-course](https://github.com/ash/raku-course) | Exercise solutions and examples from the [Raku course](https://course.raku.org) |
| `challenges/perl-weekly-challenge/` | 208 | [PWC club](https://github.com/manwar/perlweeklychallenge-club) (`*/ash/raku`) + [ash/raku-challenges](https://github.com/ash/raku-challenges) | The Weekly Challenge solutions, merged from both repositories, one directory per challenge |
| `challenges/project-euler/` | 17 | [ash/projecteuler](https://github.com/ash/projecteuler) | Project Euler solutions |
| `challenges/advent-of-code/` | 27 | [ash/adventofcode](https://github.com/ash/adventofcode) | Advent of Code solutions (2016–2020), with input files |
| `challenges/advent-of-raku-2020/` | 19 | [ash/advent-of-raku-2020](https://github.com/ash/advent-of-raku-2020) (`ash/`) | Advent of Code 2020 solutions from the community repo |
| `snippets/` | 604 | perl6tests, perl6-play, raku-test, perl6-assorti, perl5to6 (Perl 6 halves only), migratingtoperl6 (`.pl6` only), yr2017-perl6, advent-2019 (`Raku/`), a-language-a-day (`Raku/`) | Small demonstration programs and playground experiments |
| `programs/` | 96 | lingua, languages-in-raku, lang, factorial, num-seq (Raku files), perl6-grammar-play | Larger programs: the Lingua compiler, toy language interpreters, grammar experiments, algorithm collections |

In total: **1931 programs** (counted by file: `.raku`, `.p6`, `.pl6`, `.pl`, module
and test files, and the one-liner `.sh` commands).

## Notes

- File extensions are historical: `.pl`, `.p6`, `.pl6` files here are Perl 6/Raku
  programs (except where a source repo intentionally paired Perl 5 and Perl 6 versions;
  the Perl 5 halves were not imported).
- `compile-status.tsv` records, for every program file, whether it compiles
  under Rakudo v2026.06: `OK` (plain `raku -c`), `OKI` (compiles with the file's
  own directory and a local `lib/` on the include path), `FAIL`. The 69 failures
  are legitimate: very old syntax, fragments meant to demonstrate an error, or
  dependencies on modules that are not installed (e.g. Bailador, DBIish).
- `expected/` holds reference outputs produced by Rakudo v2026.06: for every program
  that ran deterministically, `expected/<path>.out` is its stdout and
  `expected/<path>.err` (if present) its stderr. Runs were made in a throwaway copy
  of the program's directory, stdin from `/dev/null`, `TZ=UTC`, no arguments,
  a 30-second limit, and the file's directory and `lib/` on the include path.
- `run-status.tsv` (columns: status, exit code, ms, flags, file) classifies each of
  the 1862 runnable programs. Every program was run twice; statuses:
  - `OK` (1642) — exit 0, both runs identical; reference output stored.
  - `NONZERO` (147) — deterministic but non-zero exit (missing arguments,
    intentional `die` demos); output stored, but note the exact error text is
    implementation-specific.
  - `NONDET` (57) — the two runs differed (`rand`, hash order, thread timing);
    no reference output stored.
  - `TIMEOUT` (16) — exceeded 30 s (infinite-sequence demos, heavy computations).
  The `src-hint` flag marks programs whose source mentions time- or
  randomness-related constructs (`now`, `today`, `sleep`, `start`, …); 112 `OK`
  programs carry it, and their stored outputs may be date- or machine-dependent
  even though two same-day runs agreed.
- In `books/perl6-calendar-2019/`, lines marked `# prelude added for runnability` /
  `# output added for runnability` were added during extraction; everything else is
  as printed in the calendar.

## Copyright

All programs © Andrew Shitov, from his published books and public repositories.
