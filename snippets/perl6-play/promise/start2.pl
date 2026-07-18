my $p = start {
    die;
}
try {
    say $p.result;
}
say $p.status; # Broken
