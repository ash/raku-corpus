my @a = 10..20;
my @b = 30..40;

my @c = @a <<+>> @b;

my @d = @a >>+<< @b;
my @e = @a <<+<< @b;
my @f = @a >>+>> @b;

say @c;
say @d;
say @e;
say @f;

