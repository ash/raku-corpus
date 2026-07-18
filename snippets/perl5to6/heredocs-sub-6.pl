sub f($name) {
    print qq:to/DOC/;
    Dear $name,

    Happy New Year!
    DOC
}

f('Clara');
