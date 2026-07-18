my $weather = '*****';
my $snow = $weather ~~ / ('*'*) /;

say 'Snow level is ' ~ $snow.chars; # Snow level is 5
