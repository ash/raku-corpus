class Cafe {
    has $.name;
    has @!orders;

    method order($what) {
        @!orders.push($what);
        self.list-orders;
    }

    method list-orders {
        say self.name;
        @!orders.sort.join(', ').say;
    }
}

my $cafe = Cafe.new(
    name => "Paris"
);

$cafe.order('meet');
$cafe.order('fish');
$cafe.list-orders;



