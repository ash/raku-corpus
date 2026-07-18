my $str = 'This is something';
say 'ok' if $str ~~ /
    is
    \s # space
    is
/;

say 'ok' if $str ~~ /
    is
    ' ' # space
    is
/;

say 'ok' if $str ~~ m:s/is is/;
say 'ok' if $str ~~ m:sigspace/is is/;
