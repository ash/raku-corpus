my %hash = 'Language' => 'Perl', 'Version' => '6';
say %hash;

my %capitals = 'France' => 'Paris', 'Germany' => 'Berlin', 'Ukraine' => 'Kiev';
say %capitals{'Ukraine'};

my %length-abbrs = :m('meter'), :km('kilometer'), :cm('centimeter');
say %length-abbrs<km>;

say %hash.WHAT;
say %capitals.WHAT;


say %hash.elems;
say %hash.keys;
say %hash.values;

say %hash.pairs;

for %hash.pairs {
    say $_.key;
    say $_.value;
}

for %hash.invert {
    .key.say;
    .value.say;
}

say %hash.kv;
