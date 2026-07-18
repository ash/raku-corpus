my @n = (0, 1, -> $x, $y {$x + $y} ... Inf).grep({
        $_.is-prime
    }).map({
        $^a * $^b * $^c
    });
.say for @n[^5];
