my $p10000 = start {
    (1..Inf).grep(*.is-prime)[9]
}
#sleep 1;
#say $p10000;
say $p10000.result;
