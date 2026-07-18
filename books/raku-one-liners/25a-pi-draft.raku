my $pi = 1;
my $sign = 1;

for 1..10000 -> $k {
    $sign *= -1;
    $pi += $sign / ($k * 2 + 1);
}

say 4 * $pi;
