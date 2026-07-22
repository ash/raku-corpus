my $a = Supply.for(1..5).Channel;
my $b = Supply.for(2..6).Channel;



loop {
    earliest * {
        more $a {
            say "a $:v";
        }
        more $b {
            say "b $:v";
        }
        done ($a, $b) {
            say "done";
            last
        }
    }
}
