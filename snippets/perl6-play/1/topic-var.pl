for @*ARGS {
    .say if /\d/;
}


for @*ARGS {
    $_.say if $_ ~~ /\d/;
}
