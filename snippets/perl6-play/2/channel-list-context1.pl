my $c = Channel.new;

$c.send(3);
$c.send(4);

$c.close;
for @$c -> $x {
    say $x;
}
