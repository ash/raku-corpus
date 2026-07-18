my $str = 'abcdef';
print 'ok' if $str ~~ /de/;
print 'ok' if $str ~~ m/de/;
