# harness/ — the rakupp↔Rakudo differential harness

- `gen-reference.sh <relpath>` — run one program twice under Rakudo in a
  sandbox copy of its directory; write `expected/<relpath>.out` and a
  `run-status.tsv` row (OK / NONZERO / NONDET / TIMEOUT).
- `diff-rakupp.sh <relpath>` — run the same program under `$RAKUPP` and diff
  stdout+exit against the reference; writes a verdict row.
- `shim/` — `perl6` and `raku` wrappers that exec `$RAKUPP`, put on PATH when
  driving `.sh` one-liner wrappers.

Eligibility for diffing = run-status OK or NONZERO (deterministic reference).
Protocol: sandbox dir copy, stdin /dev/null, TZ=UTC, 30 s alarm,
`-I. -Ilib -I../lib`. Drive with e.g.
    awk -F'\t' '$1=="OK"||$1=="NONZERO"{print $5}' run-status.tsv | \
      RAKUPP=/path/to/rakupp xargs -P 8 -n 1 harness/diff-rakupp.sh
