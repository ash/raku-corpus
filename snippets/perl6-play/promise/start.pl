my $p = start {
    42
}
say $p.result; # 42
say $p.status; # Kept
