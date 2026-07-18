my $p = start {
    my $inf = 1 / 0;
    #say $inf;
}
try {
    say $p.result;
}
say $p.status; # Broken
