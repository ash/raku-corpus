my $p = start {
    sleep 1;
    42
}
say $p.status; # Planned
say $p.result; # 42
say $p.status; # Kept
