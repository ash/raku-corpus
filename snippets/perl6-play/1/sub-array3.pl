sub get-scalars($a, $b, $c) {
    say "$a and $b and $c";
}

my @a = <3 4 5>;
get-scalars(|@a);
