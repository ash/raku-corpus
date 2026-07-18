my $str = "Line 1\nLine 2\nLine 3";

say "[$str]";
say 'ok 1' if $str ~~ m:s/^Line 1/;
say 'ok 2' if $str ~~ /3$/;
say 'ok 3' if $str ~~ m:s/^Line 2/;
say 'ok 4' if $str ~~ /2$/;

#say 'ok 5' if $str ~~ /^Line 2/m;
#say 'ok 6' if $str ~~ /2$/m;

#say 'ok 7' if $str ~~ /Line 1/m;
#say 'ok 8' if $str ~~ /2\Z/;
