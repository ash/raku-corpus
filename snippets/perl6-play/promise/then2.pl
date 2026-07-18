Promise.start({
    say 1 / 0
}).then({
    say "oops"
}).result
