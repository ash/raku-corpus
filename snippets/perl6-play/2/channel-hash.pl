my $c = Channel.new;
my %h = (alpha => 1, beta => 2);
$c.send(%h);

say $c.receive;
