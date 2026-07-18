my $ch = Channel.new;
for (1..10) {
    $ch.send($_);
}

$ch.WHAT.say;
$ch = Supply.for(1..10).Channel;

say $ch.poll;
say $ch.receive;

$ch.WHAT.say;
loop {
    winner $ch {
        more $ch -> $x {(1.rand).sleep; say "x=$x";}
        more $ch -> $y {(1.rand).sleep; say "y=$y"}
        done $ch -> {say "done"; last}
    }
}
