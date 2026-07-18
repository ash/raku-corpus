.say for @*ARGS;


for @*ARGS -> $arg {
    $arg.say;
}

for @*ARGS {
    $_.say;
}

for @*ARGS {
    $_.say();
}

for @*ARGS {
    .say();
}

for @*ARGS {
    .say;
}
