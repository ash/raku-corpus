class A {
    has $.str;
    has $!len;
    
    submethod BUILD(:$str) {
        $!str = $str;
        $!len = $str.chars;
    }
    
    method dump {
        "{$.str}'s length is $!len.".say;
    }
}

my $a = A.new(str => "Perl");
$a.dump;
