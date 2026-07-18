# Implement the Sleep sort algorithm
my @data = 3, 1, 2; # prelude added for runnability
await gather for @data -> $d {
   take start {
       sleep $d;
       say $d;
    }
}
