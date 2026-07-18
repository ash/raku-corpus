    my $channel = Channel.new;

    # В канал уходят несколько нечетных чисел:
    for <1 3 5 7 9> {
        $channel.send($_);
    }
    
    $channel.close;
    try {
        while $channel.receive -> $x {
            say $x;
        }
    }

    # После того, как все прочитано, возвращается Nil.
    $channel.poll.say; # Nil
