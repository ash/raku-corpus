list-gifts('chocolade', 'ipad', 'camelia', 'perl6');

sub list-gifts(*@items) {
    say 'Look at my gifts this year:';
    .say for @items;
}
