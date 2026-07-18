my $c = Channel.new;

$c.send(5);
$c.send(6);

$c.close;
say $c.list;



my $d = Channel.new;
$d.send(5);
$d.send(6);
my @values = $d.receive;
say @values;
