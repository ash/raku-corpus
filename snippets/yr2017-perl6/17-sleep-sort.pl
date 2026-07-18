await gather for @*ARGS -> $value {
    take start {
        say $*THREAD;
        sleep $value/10;
        say $value;
    }
}
