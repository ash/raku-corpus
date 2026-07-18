class A {
    has $.x;

    method change($value) {
        # $.x = $value; # Cannot modify an immutable Int
        $!x = $value;
    }
}

my $a = A.new(x => 2);
$a.change(7);
$a.x.say;
