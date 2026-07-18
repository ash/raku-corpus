class A {
    method meth {
        say "A.meth"
    }
}

class B {
    method meth {
        say "B.meth";
    }
}

class C is A is B {
}

my $c = C.new;
$c.meth;
$c.^mro.say;

class D is B is A {
}

my $d = D.new;
$d.meth;
$d.^mro.say;

say $d.WHAT;
