class N {
    multi method display(Int $n) {
        say $n;
    }

    multi method display(Whatever) {
        say 2000 + 100.rand.Int;
    }

    multi method display(WhateverCode $code) {
        say $code(2000 + 100.rand.Int);
    }

    multi method display(WhateverCode $code
                          where {$code.arity == 2}) {
        say $code(2000, 100.rand.Int);
    }
}

N.display(2018);     # display(Int $n)
N.display(*);        # display(Whatever)
N.display(* / 2);    # display(WhateverCode $code)
N.display(* - 1000); # display(WhateverCode $code)
N.display( * + * );
N.display( * - * );
N.display( * * * );
N.display( * ** * );
