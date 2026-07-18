my @promises;
for @*ARGS -> $a {
    @promises.push(start {
        sleep $a;
        say $a;
    })
}

await(|@promises);
