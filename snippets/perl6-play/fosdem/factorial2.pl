sub postfix:<!>($n) {
    $n < 2
        ?? 1
        !! $n * ($n-1)!
}
say 42!
