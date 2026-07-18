my $value = 42;
say "OK" if $value.WHAT === Int;

say "OK" if $value.isa(Int);


$value = "fourty-two";
say "OK" if $value.WHAT !=== Int;

