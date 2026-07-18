my $c = Channel.new;
$c.send(42);
say $c.receive;

########

my $ch = Channel.new;
$ch.send(2015);
func($ch);

sub func($ch) {
    say $ch.receive;
}

###

my $channel = Channel.new;
for <1 3 5 7 9> {
    $channel.send($_);
}

while $channel.poll -> $x {
    say $x;
}

$channel.poll.say; # Nil


#####

my $s = Supply.for(1..5).Channel;
say $s.receive;
say $s.receive;
