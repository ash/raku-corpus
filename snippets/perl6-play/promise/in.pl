my $p = Promise.in(3);

for 1..5 {
    say $p.status;
    sleep 1;
}
