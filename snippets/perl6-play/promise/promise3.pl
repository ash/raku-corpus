my $p = Promise.new;
$p.break;
say $p.result;