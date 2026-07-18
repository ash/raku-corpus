say (
    Date.new(year => 1901, month => 1, day => 1) ..
    Date.new(year => 2000, month => 12, day => 31)
).grep({.day == 1 && .day-of-week == 7}).elems
