#!/usr/bin/env raku

sub p($n) {
    return ($n ** 2 + $n + 2) / 2
}

say "p($_) = {p($_)}" for ^101;
