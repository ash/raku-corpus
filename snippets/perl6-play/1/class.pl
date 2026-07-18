class Cafe {
    has $.name;
    has @!orders;
}

my $cafe = Cafe.new(
    name => "Paris",
);

say $cafe.name;
