my $request = 'GET / HTTP/1.1';
 
say match-version($request);

sub match-version($request) {
    if $request ~~ m/HTTP\/(\d+)\.(\d+)$/ {
        say $/[0];
        warn $0;
	return $0;
    }
}

my @headers = ('Foo: bar');

say match-foo(@headers);

sub match-foo(@headers) {
    for @headers <-> $header {
        if $header ~~ s/^ (Foo)\: \h? {}// {
            say $/;
            warn $0;
            
            return $0;
        }
    }
}