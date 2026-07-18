class A {
    method x {
        say "A.x"
    }
    method y {
        say "A.y"
    }
}

class B is A {
    method x {
        say "B.x"
    }
}

my $a = A.new;
$a.x;
$a.y;

my $b = B.new;
$b.x;
$b.y;
