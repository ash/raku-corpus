class A {
    method a {
        say "A.a"
    }
}

class B {
    method b {
        say "B.b";
    }
}

class C is A is B {
}

my $c = C.new;
$c.a;
$c.b;
