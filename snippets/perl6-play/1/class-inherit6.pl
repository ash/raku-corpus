class A {
    submethod submeth {
        say "A.submeth"
    }
}

class B is A {
}

my A $a;
my B $b;

$a.submeth;
#$b.submeth;
