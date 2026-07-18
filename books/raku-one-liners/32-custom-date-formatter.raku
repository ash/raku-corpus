DateTime.now(formatter => -> $dt {
    sprintf '%02d.%02d.%04d',
    $dt.day, $dt.month, $dt.year
}).say
