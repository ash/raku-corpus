my $str = "Line 1\nLine 2\nLine 3\n";
say 'ok $$' if $str ~~ /3$$/;
say 'not ok $' unless $str ~~ /3$/;

$str = "Line 1\nLine 2\nLine 3";
say 'ok $$' if $str ~~ /3$$/;
say 'ok $' if $str ~~ /3$/;
