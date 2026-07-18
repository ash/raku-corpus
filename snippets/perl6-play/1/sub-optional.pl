sub send-mail(Str $to, Str $bcc?) {
    if defined $bcc {
        # . . .
        say "Sent to $to with a blind carbon copy to $bcc.";
    }
    else {
        # . . .
        say "Sent to $to.";
    }
}
send-mail('mail@example.com');
send-mail('mail@example.com', 'larry@wall.org');


sub i-live-in(Str $city = "Moscow") {
    say "I live in $city.";
}
i-live-in('Saint Petersburg');
i-live-in();


sub to-pay($salary, $bonus = 100.rand) {
    return ($salary + $bonus).floor;
}
say to-pay(500, 50);
say to-pay(500);
say to-pay(500);

