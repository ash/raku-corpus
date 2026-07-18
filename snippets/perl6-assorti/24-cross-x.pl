my $matters = q:to/END/;
     Perl 5
     Perl 6
    END

my $actions = q:to/END/;
    Use
    Learn
    Teach
    Love
    END

my @keywords = $actions.lines X~ $matters.lines;
.say for @keywords;
