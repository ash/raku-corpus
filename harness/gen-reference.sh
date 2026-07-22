#!/bin/sh
# gen-reference.sh <relpath> — run a corpus program twice under Rakudo in a
# sandbox copy of its directory; write expected/<relpath>.out and print a
# run-status.tsv row (status<TAB>exit<TAB>ms<TAB>src-hint?<TAB>./relpath).
# Two differing runs => NONDET (no reference written). 30s alarm => TIMEOUT.
set -u
f="$1"
CORPUS=$(cd "$(dirname "$0")/.." && pwd)
RAKU="${RAKU:-raku}"
rel=${f#./}

case "$rel" in
  programs/*) unit=$(echo "$rel" | cut -d/ -f1-2);;
  *)          unit=$(dirname "$rel");;
esac
inunit=${rel#"$unit"}; inunit=${inunit#/}

run_once() { # $1 out file; echoes exit code
  tmp=$(mktemp -d); cp -R "$CORPUS/$unit/." "$tmp/"
  ( cd "$tmp/$(dirname "$inunit")" || exit 125
    b=$(basename "$inunit")
    case "$b" in
      *.sh) TZ=UTC CORPUS_ALARM="${ALARM:-30}" perl -e 'alarm $ENV{CORPUS_ALARM} // 30; exec "/bin/sh", $ARGV[0]' "$b" >"$1" 2>/dev/null </dev/null;;
      *)    RAKU="$RAKU" TZ=UTC CORPUS_ALARM="${ALARM:-30}" perl -e 'alarm $ENV{CORPUS_ALARM} // 30; exec $ENV{RAKU},"-I.","-Ilib","-I../lib",$ARGV[0]' "$b" >"$1" 2>/dev/null </dev/null;;
    esac
  )
  ec=$?
  rm -rf "$tmp"
  return $ec
}

o1=$(mktemp); o2=$(mktemp)
t0=$(perl -MTime::HiRes=time -e 'printf "%.0f", time()*1000')
run_once "$o1"; ec1=$?
t1=$(perl -MTime::HiRes=time -e 'printf "%.0f", time()*1000')
run_once "$o2"; ec2=$?

hint=""
grep -lqE '\b(rand|srand|roll|pick|now|DateTime\.now|Date\.today|\$\*PID)\b' "$CORPUS/$rel" 2>/dev/null && hint="src-hint"

if [ "$ec1" -eq 142 ] || [ "$ec2" -eq 142 ]; then status=TIMEOUT
elif ! cmp -s "$o1" "$o2" || [ "$ec1" != "$ec2" ]; then status=NONDET
elif [ "$ec1" -eq 0 ]; then status=OK
else status=NONZERO
fi
if [ "$status" = OK ] || [ "$status" = NONZERO ]; then
  mkdir -p "$CORPUS/expected/$(dirname "$rel")"
  cp "$o1" "$CORPUS/expected/$rel.out"
fi
rm -f "$o1" "$o2"
printf '%s\t%s\t%s\t%s\t./%s\n' "$status" "$ec1" $((t1-t0)) "$hint" "$rel"
