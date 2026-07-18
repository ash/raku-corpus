my $p = Promise.new;
say $p.status; # Planned

say $p.Bool; # False
$p.keep;
say $p.result; # True
say $p.status; # Kept
say $p.Bool; # True

#####

my $p2 = Promise.new;
say $p2.Bool;
$p2.break;
say $p2.status; # Broken
try {
    say $p2.result;
}
#say $!;
say $p2.Bool;

####

