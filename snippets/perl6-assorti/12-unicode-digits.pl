for 1..0x10FFFD {
    print $_.chr if $_.chr ~~ / <:digit> /;
}