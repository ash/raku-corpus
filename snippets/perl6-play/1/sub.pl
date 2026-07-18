sub call-me {
    say "I'm called"
}

call-me;


sub qube($x) {
    return $x ** 3;
}
say qube(3);


sub min($x, $y) {
    return $x < $y ?? $x !! $y;
}
say min(-2, 2);
say min(42, 24);


