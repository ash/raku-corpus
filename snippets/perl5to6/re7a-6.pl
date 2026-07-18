my $str = q:to/STR/;
    Line 1
    Line 2
    Line 3
    STR
    # No leading spaces but a \n is appended

say 'ok 1' if $str ~~ m:s/^Line 1/;
say 'ok 2' if $str ~~ /3\n$/;

say 'ok 3' unless $str ~~ m:s/^Line 2/;
say 'ok 4' unless $str ~~ /2$/;

say 'ok 5' if $str ~~ /^^Line\s2/;
say 'ok 6' if $str ~~ /3$/;

say 'ok $$' if $str ~~ /3$$/;
say 'not ok $' unless $str ~~ /3$/;

