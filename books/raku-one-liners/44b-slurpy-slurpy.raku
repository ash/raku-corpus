my @a = < chocolade ipad >;
my @b = < camelia perl6 >;

keep-groupped(@a, @b);
keep-groupped(['chocolade', 'ipad'], ['camelia', 'camel']);
keep-groupped(< chocolade ipad >, < camelia camel >);

sub keep-groupped(**@items) {
    .say for @items;
}
