my $c = Channel.new;
my @a = (2, 4, 6, 8);
$c.send(@a);

#say $c.receive;

my $x = $c.receive;
say $x.WHAT;