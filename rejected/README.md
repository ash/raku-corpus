# rejected/ — programs Rakudo cannot run

These files do not compile under Rakudo (re-verified against v2026.06 on
2026-07-22): pre-release Perl 6 syntax from the Parrot/Pugs era, deliberate
error demonstrations from books, and programs requiring ecosystem modules that
are not installed (Bailador, DBIish, Cro::*, …). They are kept for history but
excluded from every corpus count and from the rakupp differential harness.
Their original paths are preserved under this directory; the classification
lives in ../compile-status.tsv (status FAIL).
