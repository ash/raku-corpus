my $var;
sub modify_var() is rw {
    $var;
    # return $var;
}

modify_var() = 100;
say $var;
