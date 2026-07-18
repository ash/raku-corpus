my $p = Promise.new;
$p.break("B");
try {
    $p.cause;
}

