say +(1901..2000 X 1..12).map(
    {Date.new(|@_, 1)}
).grep(*.day-of-week == 7);
