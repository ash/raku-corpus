my $c = Channel.new;
say $c.closed;

$c.close;
say $c.closed;
