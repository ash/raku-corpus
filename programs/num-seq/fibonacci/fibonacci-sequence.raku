#!/usr/bin/env raku

my @fib = 0, 1, * + * ... *;

# say @fib[10];
say "fib($_) = {@fib[$_]}" for ^100;
