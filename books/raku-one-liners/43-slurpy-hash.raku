dump(alpha => 'a', beta => 'b'); # Prints:
                                 # alpha = a
                                 # beta = b

sub dump(*%data) {
    for %data.kv {say "$^a = $^b"}
}
