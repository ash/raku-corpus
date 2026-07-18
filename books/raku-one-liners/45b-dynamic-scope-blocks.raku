sub happy-new-year() {
    "Happy new $*year year!"
}

my $*year = 2018;

say happy-new-year();      # 2018

{
    $*year = 2019;         # New value
    say happy-new-year();  # 2019
}

{
    my $*year = 2020;      # New variable
    say happy-new-year();  # 2020
}

say happy-new-year();      # 2019
