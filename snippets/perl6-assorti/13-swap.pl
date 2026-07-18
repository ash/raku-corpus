my ($a, $b) = 10, 20;

($b, $a) = ($a, $b);
say "$a, $b";

($a, $b).=reverse; # spaces?
say "$a, $b";
