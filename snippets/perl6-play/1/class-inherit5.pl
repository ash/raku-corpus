class A {
    method !private {
        say "A.private";
    }
    method public {
        self!private;
    }
}

class B is A {
    method method {
        self.public;
        #self!private;
    }
}

my $b = B.new;
$b.method;
