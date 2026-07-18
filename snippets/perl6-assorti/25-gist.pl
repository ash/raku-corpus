class X {
    has $.value;

    method gist {
        '[' ~ $!value ~ ']'
    }
}

my $x = X.new(value => 42);

say $x;
$x.say;
