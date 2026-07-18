my $c = Channel.new;
say "open" if !$c.closed;

$c.close;
say "closed" if $c.closed;
