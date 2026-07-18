# $z = $x + $y



my %var;

grammar G {
    rule TOP {
        ^ 
            [ <statement> \s* <comment>? ]*
        $       
    }

    rule statement {
        [
            | <variable-declaration>
            | <assignment>
            | <say-function>
        ]
        ';'
    }

    rule comment {
        '#' <-[\n]>*
    }

    rule variable-declaration {
        'my' <variable>
    }

    token variable {
        <sigil> <identifier>
    }

    token sigil {
        '$' | '@'
    }
    
    token identifier {
        <alpha> <alnum>*
    }

    rule assignment {
        <variable> '=' <expression>
    }

    rule expression {
        | <term> '+' <expression> {$/.make($<term>.ast + $<expression>.ast)}
        | <value>    {$/.make(~$<value>)}
        | <variable> {$/.make(%var{$<variable><sigil>}{$<variable><identifier>})}
    }

    rule term {
        | <value>
        | <variable>
    }
    
    token value {
        <number>
    }

    token number {
        <digit>+
    }

    rule say-function {
        'say' <variable>
    }
}

class A {
    method variable-declaration($/) {
        %var{$<variable><sigil>}{$<variable><identifier>} = 'undefined';
    }

    method variable($/) {
        $/.make(%var{$<sigil>}{$<identifier>})
    }

    method assignment($/) {
        %var{$<variable><sigil>}{$<variable><identifier>} = $<expression>.made;
    }

    method value($/) {
        $/.make(+$<number>)
    }

    method say-function($/) {
        say %var{$<variable><sigil>}{$<variable><identifier>};
    }

    method term($/) {
        if $<value> {
            $/.make($<value>.ast)
        }
        elsif $<variable> {
            $/.make($<variable>.ast)
        }
    }

    method expression($/) {
        if $<term> {
            $/.make($<term>.ast + $<expression>.ast)
        }
        elsif $<value> {
            $/.make(~$<value>)
        }
        elsif $<variable> {
            $/.make(%var{$<variable><sigil>}{$<variable><identifier>})
        }
    }
}

my $prog = q:to/END/;
my $x;
my $y;
my $z;

$x = 1;
$y = 2;

$z = $x + $y;
say $z;

my $sum;
$sum = 10 + 11 + $x + $y + $z;
say $sum; # 27

END


my $result = G.parse($prog, :actions(A));
#say $result;

say %var;
