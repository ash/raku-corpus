my $p = Promise.new;
$p.break;
try {
    say $p.result;
}
