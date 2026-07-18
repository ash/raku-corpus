say (
    Date.new(year => 1901) ..^ Date.new(year => 2001)
).grep({.day == 1 && .day-of-week == 7}).elems
