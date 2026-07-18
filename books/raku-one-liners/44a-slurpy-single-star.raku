my @a = < chocolade ipad >;
my @b = < camelia perl6 >;

all-together(@a, @b);
all-together(['chocolade', 'ipad'], ['camelia', 'perl6']);
all-together(< chocolade ipad >, < camelia perl6 >);

sub all-together(*@items) {
    .say for @items;
}
