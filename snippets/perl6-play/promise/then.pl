my $p = Promise.in(2);
my $t = $p.then({say "OK"});
say "promissed";
sleep 3;
say "done";
say $t.WHAT;