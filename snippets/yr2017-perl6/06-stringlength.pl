say "hello".chars;
say "hello".codes;

say 'café'.chars;
say 'café'.codes;

say 'привет'.chars;
say 'привет'.codes;

say 'møp'.chars;
say 'møp'.codes;

say 'x̨'.chars; # 1
say 'x̨'.codes; # 2

say "___";
say "x\x[0328]";
say "x\x[0328]".chars;
say "x\x[0328]".codes;

say "e\x[0328]";
say "e\x[0328]".chars;
say "e\x[0328]".codes;
say "___";
say 'ę'.chars; # 1
say 'ę'.codes; # 1

say "hello".length;
