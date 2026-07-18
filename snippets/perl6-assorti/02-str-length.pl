#say 'Düsseldorf'.length;
say 'Düsseldorf'.chars;
say 'Düsseldorf'.codes;

my $s = 'ü';
$s.chars.say;
$s.codes.say;

$s = "k\x[0308]";
say $s;
$s.chars.say;
$s.codes.say;
