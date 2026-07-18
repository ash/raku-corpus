say Bool::True;
say False;
say 1 == 2;

say Bool.pick;

my $b = Bool::True;
$b--;
say $b;

$b = Bool::False;
$b++;
say $b;


say 42.Bool;

my $pi = 3.14;
say $pi.Bool;

say 0.Bool;
say "00".Bool;

say Bool::True.Int;
