class Present {
    method giver() {
        'parents'
    }
}

class ChristmasPresent is Present {
    method giver() {
        'Santa Claus'
    }
}

my ChristmasPresent $present;

$present.giver.say;             # Santa Claus
$present.*giver.join(', ').say; # Santa Claus, parents
