my $c = Supply.for(1..5).Channel;

my $d = Supply.for(100..105).Channel;

loop {
earliest * {
    more $c {say "C"}
    more $d {say "D"}
}
}