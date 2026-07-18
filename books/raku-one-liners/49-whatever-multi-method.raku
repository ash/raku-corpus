class N {
    multi method display(Int $n) {
        say $n;
    }

    multi method display(Whatever) {
        say 2000 + 100.rand.Int;
    }
}

my $n = N.new;

$n.display(2020);
$n.display(*);
