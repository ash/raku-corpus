my $p = start {
    say 1 / 0
}
my $t = $p.then({
    say "oops"
});
say $t.result;
