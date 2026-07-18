my $p = Promise.new;
say $p.status;

$p.keep;
say $p.status;


my $p1 = Promise.new;
say $p1.status;

$p1.break;
say $p1.status;


my $p2 = Promise.new;
say $p2.Bool;
say ?$p2;

$p2.keep;
say ?$p2;


my $p3 = Promise.new;
say ?$p3;

$p3.break;
say ?$p3;
