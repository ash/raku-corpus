class Cafe {
    has $.name is rw;
    has @!orders;
}

my $cafe = Cafe.new(
    name => "Paris"
);

$cafe.name = "Berlin";
say $cafe.name;
