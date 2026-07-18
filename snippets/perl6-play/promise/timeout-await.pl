my $code = start {
    sleep 3
}

my $timeout = Promise.in(1);
#my $timeout = start {sleep 1}

my ($a, $b) = await($code, $timeout);
say $code.status;
say $timeout.status;
