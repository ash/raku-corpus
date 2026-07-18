my @stack;
my %variable;

my %function = 
    print => sub {
        say @stack.pop
    },

    '+' => sub {
        @stack.push(@stack.pop + @stack.pop)
    },
    '-' => sub {
        @stack.push(@stack.pop - @stack.pop)
    },
    '*' => sub {
        @stack.push(@stack.pop * @stack.pop)
    },
    '/' => sub {        
        @stack.push(@stack.pop / @stack.pop)
    },

    var => sub {
        %variable{@stack.pop} = @stack.pop
    },
;

grammar StackyLang {
    rule TOP {
        <thing>+
    }

    rule thing {
        | <literal>
        | <word>        
    }

    rule literal {
        | <string> {@stack.push: ~$<string><text>}
        | <number> {@stack.push: +$<number>}
    }

    token string {
        '"' <text> '"'
    }

    token text {
        <-["]>* #"
    }

    token number {
        \d+
    }

    token word {
        [
            | \w+ 
            | '+' | '-' | '*' | '/'
        ]
        {
            if %variable{~$/} {
                @stack.push(%variable{~$/});
            }
            elsif %function{~$/} {
                %function{~$/}();
            }
            else {
                say "ERROR: Unknown word '$/'";
                exit;
            }
        }
    }
}

my $path = @*ARGS[0];
if ($path) {
    my $program = $path.IO.slurp;
    my $parse = StackyLang.parse($program);
    #say $parse;
    #dd @stack;
    #dd %variable;
}
