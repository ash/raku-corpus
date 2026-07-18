my $phrase = 'I love you......';

say 'You are so uncertain...'
    if $phrase ~~ / '.' ** 4..* /;
