sub seq($init) {
    state $c = $init;
    $c = $init;

    return {$c++};
}
my $a = seq(1);
my $b = seq(42);

say $a();
say $b();
