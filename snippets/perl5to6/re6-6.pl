my $str = 'This is something';

say 'ok' if $str ~~ /'is is'/;

say 'ok' if $str ~~ /is' 'is/;
say 'ok' if $str ~~ /is\sis/;
