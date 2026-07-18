class X {
    has $.value;

    method gist {
        '[' ~ $!value ~ ']'
    }
    method Str {
        '"' ~ $!value ~ '"'
    }
}

my $x = X.new(value => 42);

say $x;
$x.say;

say $x.Str;
say "$x";
