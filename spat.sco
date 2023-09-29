list speakers(float N) {
    list s
    s = {}

    float a, i
    a = TWO_PI / N
    for (i = 0; i < N; i += 1) {
        s[i] = {cos(a * i), sin(a * i)}
    }
    return s
}

list spatvals(list sploc, list srcloc, float size) {
    list d
    float sum
    d = {}
    for (i = 0; i < len(sploc); i += 1) {
        d[i] = 1.0/ pow(2, size * euclid(sploc[i], srcloc))
    }
    return d
}