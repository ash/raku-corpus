my $N = 100;

my @x = FatRat.new(1, 1),
        -> $x { $x - ($x ** 2 - $N) / (2 * $x) } ... *;

say @x[^10];
