my $code = start {
    sleep 5
}

#my $timeout = Promise.in(3);
my $timeout = start {sleep 3}

my $done = Promise.anyof($code, $timeout);
say $done.result;
say $code.status;
