"Birthday: 18 December 2014" ~~ /(\d+)\s(\D+)\s(\d+)/;
say $/.Str;

say $/[$_] for 0..2;

say $1;
