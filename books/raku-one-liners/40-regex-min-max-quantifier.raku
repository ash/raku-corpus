my $operator = '..';

say "'$operator' is a valid Raku operator"
    if $operator ~~ /^ '.' ** 1..3 $/;
