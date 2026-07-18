class A {
    has $.x = 42;
    method m {
        say "A.m";
    }
}

my A $a;

#say $a.x;

my A $b = A.new;
say $b.x;


my A $c = A.new(x => 14);
say $c.x;
